import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreDocumentSnapshotExtension
    on DocumentSnapshot<Map<String, dynamic>> {
  Map<String, dynamic> dataWithId() {
    assert(exists);
    final doc = data();
    doc!['id'] = id;
    return doc;
  }
}
