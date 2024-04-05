abstract class Firestore {
  // just a simple get
  Future getAllDataOfCollection(String collection);

  Future addDataToCollection(String collection, Map<String, dynamic> data);

  // updates an existing entry (missing fields won't be touched on update), document must exist
  Future updateEntryWithId(
      String collection, String documentId, Map<String, dynamic> data);
  // adds or updates an existing entry (missing fields will be deleted on update!), document will be created if needed
  Future addOrUpdateWithId(
      String collection, String documentId, Map<String, dynamic> data);

  // deletes the entry with the given document id
  Future deleteEntry(String collection, String documentId);

  updateToken(String token);
}
