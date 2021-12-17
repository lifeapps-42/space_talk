import 'package:firebase_messaging/firebase_messaging.dart';

import '../models/user.dart';
import 'firestore_model_ref_mixin.dart';
import 'repo_provider.dart';

class UserFirestoreRepo with FirestoreUsersModelRef implements UserRepo {
  @override
  Future<User?> getUserById(String uid) async {
    final snap = await usersRef.doc(uid).get();
    _setFcmToken(uid);
    return snap.data();
  }

  @override
  Future<void> setUser(User user) async {
    final docRef = usersRef.doc(user.uid);
    return docRef.set(user);
  }

  //TODO: move to separate collection to avoid extra dispatching and more atomic sructure
  Future<void> _setFcmToken(String uid) async {
    final fcm = FirebaseMessaging.instance;
    final fcmToken = await fcm.getToken();
    final data = {'fcmToken': fcmToken};
    return usersRef.doc(uid).update(data);
  }
}
