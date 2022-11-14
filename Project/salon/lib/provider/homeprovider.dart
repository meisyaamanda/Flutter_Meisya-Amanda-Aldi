import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> streamdetail(){
    CollectionReference data = firestore.collection("detail");
    return data.snapshots();
  }

  Future<DocumentSnapshot<Object?>> getByID(String id) {
    DocumentReference docRef = firestore.collection("detail").doc(id);
    return docRef.get();
  }
}