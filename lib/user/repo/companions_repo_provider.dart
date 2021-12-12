import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user.dart';
import 'companions_firestore_repo.dart';

final companionsRepoProvider = Provider<CompanionsRepo>((ref) => CompanionsFirestoreRepo());

abstract class CompanionsRepo {

  Future<List<User>> fetchUsersById(List<String> uids);

  Stream<List<User>> subscribeToCompanions(List<String> uids);
}