import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';

class UserFirestoreRepo {
  static const _kCollection = 'users';
  final _firestore = FirebaseFirestore.instance;


  Future<User?> getUserById(String uid) async {
    final collectionRef = _firestore.collection(_kCollection);
    final docRef = collectionRef.doc(uid);
    final doc = await docRef.get();
    return doc.exists ? User.fromJson(doc.data()!) : null;
  }

  Future<void> setUser(User user) async {
    final collectionRef = _firestore.collection(_kCollection);
    final docRef = collectionRef.doc(user.uid);
    return docRef.set(user.toJson());
  } 
}