import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/phone.dart';
import '../models/user.dart';
import 'companions_repo_provider.dart';
import 'firestore_model_ref_mixin.dart';

class CompanionsFirestoreRepo
    with FirestoreUsersModelRef
    implements CompanionsRepo {
  @override
  Future<List<User>> fetchUsersById(List<String> uids) async {
    final query = usersRef.where(FieldPath.documentId, whereIn: uids);
    final snap = await query.get();
    return snap.docs.map((e) => e.data()!).toList();
  }

  @override
  Stream<List<User>> subscribeToCompanions(List<String> uids) {
    final query = usersRef.where(FieldPath.documentId, whereIn: uids);
    final stream = query.snapshots();
    return stream.map((snap) => snap.docs.map((e) => e.data()!).toList());
  }

  @override
  Future<User?> findCompanionByPhone(PhoneNumber phone) async {
    final query =
        usersRef.where('phone.value',  isEqualTo: phone.value);
    final snap = await query.get();
    final docs = snap.docs;
    if (docs.isEmpty) return null;
    return docs.first.data();
  }
}
