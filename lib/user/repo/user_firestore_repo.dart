import 'package:cloud_firestore/cloud_firestore.dart';

import '../../utils/firebase_extensions/document_snapshot_extensions.dart';
import '../models/user.dart';
import 'repo_provider.dart';

class UserFirestoreRepo implements UserRepo {
  static const _kCollection = 'users';
  final _modelRef =
      FirebaseFirestore.instance.collection(_kCollection).withConverter<User?>(
    fromFirestore: (snap, _) {
      return snap.exists ? User.fromJson(snap.dataWithId()) : null;
    },
    toFirestore: (user, _) {
      return user!.toJson();
    },
  );

  @override
  Future<User?> getUserById(String uid) async {
    final snap = await _modelRef.doc(uid).get();
    return snap.data();
  }

  @override
  Future<void> setUser(User user) async {
    final docRef = _modelRef.doc(user.uid);
    return docRef.set(user);
  }
}
