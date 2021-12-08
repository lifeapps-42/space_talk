import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user_firestore_repo.dart';

final userRepoProvider = Provider((ref) => UserFirestoreRepo());
