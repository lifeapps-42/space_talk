import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user.dart';
import 'user_firestore_repo.dart';

final userRepoProvider = Provider<UserRepo>((ref) => UserFirestoreRepo());

abstract class UserRepo {

  Future<User?> getUserById(String uid);

  Future<void> setUser(User user);
  
  Future<void> updateUser(String userUid, Map<String, dynamic> data);
}