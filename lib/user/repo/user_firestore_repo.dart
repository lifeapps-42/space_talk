import '../models/user.dart';
import 'firestore_model_ref_mixin.dart';
import 'repo_provider.dart';

class UserFirestoreRepo with FirestoreUsersModelRef implements UserRepo {
  @override
  Future<User?> getUserById(String uid) async {
    final snap = await usersRef.doc(uid).get();
    return snap.data();
  }

  @override
  Future<void> setUser(User user) async {
    final docRef = usersRef.doc(user.uid);
    return docRef.set(user);
  }
}
