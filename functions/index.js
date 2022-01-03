const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();

/**
 * Triggers when a user gets a new follower and sends a notification.
 *
 * Followers add a flag to `/followers/{followedUid}/{followerUid}`.
 * Users save their device notification tokens to `/users/{followedUid}/notificationTokens/{notificationToken}`.
 */
exports.sendOnMessageNotification = functions.database.ref('/chats/{chatId}/messages')
    .onWrite(async function (change, context) {
        functions.logger.log(
            'function triggered'
        );
        const chatId = context.params.chatId;
        const messageId = change.after.val();

        const chatPromise = admin.database()
            .ref(`/chats/${chatId}`).once('value');

        const messagePromise = admin.database()
            .ref(`/chats/${chatId}/messages/${messageId}`).once('value');

        let messageSnapshot;

        let chatSnapsot;

        const result = await Promise.all([chatPromise, messagePromise]);

        messageSnapshot = result[0];
        chatSnapsot = result[1];

        const chatUsers = chatSnapsot.val().users;
        const messageAuthor = messageSnapshot.val().authorId;
        const messageText = messageSnapshot.val().text;
        // const sendToUsers = chatUsers.remove(messageAuthor);

        const tokenPromise = admin.database()
            .ref(`/users/${chatUsers[0]}/fcmToken`).once('value');

        const senderPromise = admin.database()
            .ref(`/users/${messageAuthor}/name`).once('value');

        let senderName;

        let token;

        const usersData = await Promise.all([tokenPromise, senderPromise]);
        token = usersData[0];
        senderName = usersData[1];





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
            messageText
        );

        const payload = {
            notification: {
                title: senderName,
                body: messageText,
            }
        };

        const response = await admin.messaging().sendToDevice(token, payload);

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
        return Promise.all(response);
    });
