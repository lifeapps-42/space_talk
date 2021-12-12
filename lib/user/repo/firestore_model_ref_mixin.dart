import 'package:cloud_firestore/cloud_firestore.dart';

import '../../utils/firebase_extensions/document_snapshot_extensions.dart';
import '../models/user.dart';

mixin FirestoreUsersModelRef {
  static const _kCollection = 'users';
  CollectionReference<User?> get usersRef =>
      FirebaseFirestore.instance.collection(_kCollection).withConverter<User?>(
        fromFirestore: (snap, _) {
          return snap.exists ? User.fromJson(snap.dataWithId()) : null;
        },
        toFirestore: (user, _) {
          return user!.toJson();
        },
      );
}
