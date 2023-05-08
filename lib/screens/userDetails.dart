import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

class userDetails extends StatefulWidget {
  final String name;

  final String uid;

  const userDetails({super.key, required this.uid, required this.name});

  @override
  State<userDetails> createState() => _userDetailsState();
}

class _userDetailsState extends State<userDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          widget.name,
          style: GoogleFonts.montserrat(),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await FirebaseFirestore.instance
                .collection("utilisateur")
                .doc(widget.uid)
                .delete()
                .then((value) => print('Document deleted successfully.'))
                .catchError(
                    (error) => print('Failed to delete document: $error'));
            EasyLoading.showSuccess("Utilisateur est supprimé");
          },
          child: Text("Supprimer utilisateur"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
      ),
    );
  }
}
