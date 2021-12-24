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

extension FirestoreTimestampHandler on Map<String, dynamic> {
  Map<String, dynamic> setServerTimestamp(String field) {
    return this..[field] = FieldValue.serverTimestamp();
  }

  Map<String, dynamic> handleTimeStamp(String field) {
    final date = this[field];
    if (date is Timestamp) {
      this[field] = date.toDate().toString();
    }
    return this;
  }
}

extension FirestoreChatIdForMessage on Map<String, dynamic> {
  Map<String, dynamic> setChatId(String chatId) {
    return this..['chatId'] = chatId;
  }
}
