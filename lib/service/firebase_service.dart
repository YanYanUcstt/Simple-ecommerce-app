import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  String getUserId() {
    return _firebaseAuth.currentUser!.uid;
  }

  final CollectionReference productsRef = FirebaseFirestore
      .instance
      .collection("Product");

  final CollectionReference usersRef = FirebaseFirestore
      .instance
      .collection("Users");

}