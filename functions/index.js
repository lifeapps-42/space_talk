const functions = require('firebase-functions');
const admin = require('firebase-admin');
require("firebase-functions/lib/logger/compat");
admin.initializeApp();

/**
 * Triggers on new message created.
 *
 * Sends push notification to each token of each user in the chat
 * except the message author.
 */
exports.sendOnMessagePush = functions.firestore.document('chats/{chatId}/messages/{messageId}')
    .onCreate(async (change, context) => {
        functions.logger.log(
            'function triggered'
        );
        const chatId = context.params.chatId;
        const messageId = context.params.messageId;

        const chatPromise = admin.firestore()
            .doc(`/chats/${chatId}`).get();

        const messagePromise = admin.firestore()
            .doc(`/chats/${chatId}/messages/${messageId}`).get();

        let messageSnapshot;

        let chatSnapsot;

        const result = await Promise.all([messagePromise, chatPromise]);

        messageSnapshot = result[0];
        chatSnapsot = result[1];

        const chatUsers = chatSnapsot.data().users;

        functions.logger.log(
            'chat users are',
            chatSnapsot.data(),
        );

        const messageAuthor = messageSnapshot.data().authorId;
        const messageText = messageSnapshot.data().text;
        const sendToUsers = chatUsers.filter((value, _i, _arr) => value !== messageAuthor);
        const userPromise = admin.firestore()
            .doc(`/users/${sendToUsers[0]}`).get();

        const senderPromise = admin.firestore()
            .doc(`/users/${messageAuthor}`).get();

        let senderName;

        let token;

        const usersData = await Promise.all([userPromise, senderPromise]);
        token = usersData[0].data().fcmToken;
        senderName = usersData[1].data().name;





        // If un-follow we exit the function.
        //   if (!change.after.val()) {
        //     return functions.logger.log(
        //       'User ',
        //       followerUid,
        //       'un-followed user',
        //       followedUid
        //     );
        //   }
        functions.logger.log(
            'Message sent to chat:',
            chatId,
            'By user:',
            senderName,
            'The text is:',
            messageText,
            'token is:',
            token
        );

        const payload = {
            notification: {
                title: senderName,
                body: messageText,
                sound: "default",
            }
        };

        const response = await admin.messaging().sendToDevice(token, payload);

        functions.logger.log(
            'FCM response:',
            response.results,
        );
        // // Get the list of device notification tokens.
        // const getDeviceTokensPromise = admin.database()
        //     .ref(`/users/${followedUid}/notificationTokens`).once('value');
        // // Get the follower profile.
        // const getFollowerProfilePromise = admin.auth().getUser(followerUid);
        // // The snapshot to the user's tokens.
        // let tokensSnapshot;
        // // The array containing all the user's tokens.
        // let tokens;
        // const results = await Promise.all([getDeviceTokensPromise, getFollowerProfilePromise]);
        // tokensSnapshot = results[0];
        // const follower = results[1];
        // // Check if there are any device tokens.
        // if (!tokensSnapshot.hasChildren()) {
        //     return functions.logger.log(
        //         'There are no notification tokens to send to.'
        //     );
        // }
        // functions.logger.log(
        //     'There are',
        //     tokensSnapshot.numChildren(),
        //     'tokens to send notifications to.'
        // );
        // functions.logger.log('Fetched follower profile', follower);
        // // Notification details.
        // const payload = {
        //     notification: {
        //         title: 'You have a new follower!',
        //         body: `${follower.displayName} is now following you.`,
        //         icon: follower.photoURL
        //     }
        // };
        // // Listing all tokens as an array.
        // tokens = Object.keys(tokensSnapshot.val());
        // // Send notifications to all tokens.
        // const response = await admin.messaging().sendToDevice(tokens, payload);
        // // For each message check if there was an error.
        // const tokensToRemove = [];
        // response.results.forEach((result, index) => {
        //     const error = result.error;
        //     if (error) {
        //         functions.logger.error(
        //             'Failure sending notification to',
        //             tokens[index],
        //             error
        //         );
        //         // Cleanup the tokens who are not registered anymore.
        //         if (error.code === 'messaging/invalid-registration-token' ||
        //             error.code === 'messaging/registration-token-not-registered') {
        //             tokensToRemove.push(tokensSnapshot.ref.child(tokens[index]).remove());
        //         }
        //     }
        // });
        // return Promise.all(tokensToRemove);

    });
