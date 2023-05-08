import 'package:cloud_firestore/cloud_firestore.dart';

class user_service {
  getAllUser() {
    return FirebaseFirestore.instance.collection('utilisateur').snapshots();
  }
}
