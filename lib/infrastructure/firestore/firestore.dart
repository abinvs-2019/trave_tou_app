import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tourist_app/core/firestore/I_firestore.dart';

class FirestoreFunctions implements Firestore {

  @override
  Future addDataToCollection(
      String collection, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(collection).add(data);
  }

  // updates an existing entry (missing fields won't be touched on update), document must exist
  @override
  Future updateEntryWithId(
      String collection, String documentId, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance
        .collection(collection)
        .doc(documentId)
        .update(data);
  }

  // adds or updates an existing entry (missing fields will be deleted on update!), document will be created if needed
  @override
  Future addOrUpdateWithId(
      String collection, String documentId, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance
        .collection(collection)
        .doc(documentId)
        .set(data);
  }

  // deletes the entry with the given document id
  @override
  Future deleteEntry(String collection, String documentId) async {
    await FirebaseFirestore.instance
        .collection(collection)
        .doc(documentId)
        .delete();
  }

  @override
  Future getAllDataOfCollection(String collection) async {
    await FirebaseFirestore.instance.collection(collection).get();
  }
}
