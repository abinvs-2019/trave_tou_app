import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourist_app/config/constants.dart';
import 'package:tourist_app/config/firestore_collection.dart';
import 'package:tourist_app/core/firebase_database/firebase_database.dart';
import 'package:tourist_app/core/firestore/I_firestore.dart';

@Injectable()
@LazySingleton(as: Firestore)
class FirbaseFunctions implements Firestore, FirebaseUpload {
  @override
  Future addDataToCollection(
      String collection, Map<String, dynamic> data) async {
    var res = await FirebaseFirestore.instance.collection(collection).add(data);
    return res.id;
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

  @override
  Future<Either<String, String>> firebaseStroageUpload(File filePath) async {
    final file = File(filePath.path);

// Create the file metadata
    final metadata = SettableMetadata(contentType: "image/jpeg");

// Create a reference to the Firebase Storage bucket
    final storageRef = FirebaseStorage.instance.ref();

// Upload file and metadata to the path 'images/mountains.jpg'
    final uploadTask = storageRef
        .child("images/chats/${filePath.path}.jpg")
        .putFile(file, metadata);

    String isUploaded = '';
// Listen for state changes, errors, and completion of the upload.
    uploadTask.snapshotEvents.listen((TaskSnapshot taskSnapshot) {
      switch (taskSnapshot.state) {
        case TaskState.running:
          final progress =
              100.0 * (taskSnapshot.bytesTransferred / taskSnapshot.totalBytes);
          print("Upload is $progress% complete.");
          break;
        case TaskState.paused:
          isUploaded = '';
          break;
        case TaskState.canceled:
          isUploaded = '';
          break;
        case TaskState.error:
          isUploaded = '';
          break;
        case TaskState.success:
          isUploaded = '';
          break;
      }
    });
    if (isUploaded == '') {
      return const Right('Error while Uploading');
    } else {
      return Left(isUploaded);
    }
  
  }

  @override
  updateToken(String token) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var uid = await preferences.getString(USER_IDENTITY_KEY);

    var collection = FirebaseFirestore.instance
        .collection(Collections.USERS)
        .where('uuid', isEqualTo: uid);
    var querySnapshots = await collection.get();
    for (var doc in querySnapshots.docs) {
      await doc.reference.update({'token': token});
    }
  }
}
