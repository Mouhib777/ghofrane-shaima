import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning/screens/homeScreen.dart';
import 'package:e_learning/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splashSCreen extends StatefulWidget {
  const splashSCreen({super.key});

  @override
  State<splashSCreen> createState() => _splashSCreenState();
}

class _splashSCreenState extends State<splashSCreen> {
  @override
  //? edheya fontion li tkhalih yo93ed fil page edheya "3" "seconds"
  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ), () async {
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user == null
            //  || user_data["nom"] == ''
            ) {
          Navigator.of(context).push(
            PageRouteBuilder(
              transitionDuration: Duration.zero,
              pageBuilder: (context, animation, secondaryAnimation) =>
                  loginScreen(),
            ),
          );
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => homeScreen(
                        isAdmin: "false",
                      )));
        }
      });
      // Navigator.push(
      //     //? edheyya script li ikhalik tnavi bin les pages (besh tefhemha akther aml recherche al initState() super.iniState() )
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => loginScreen(),
      //     ));
    });
    // getUser_Data();
    super.initState();
  }

  // @override
  // // void initState() {
  // //   getUser_Data();
  // //   super.initState();
  // // }

  // var user_data;

  // Future<DocumentSnapshot> getUser_Data() async {
  //   final User? user1 = FirebaseAuth.instance.currentUser;
  //   String? _uid = user1!.uid;
  //   var result1 = await FirebaseFirestore.instance
  //       .collection('utilisateur')
  //       .doc(_uid)
  //       .get();
  //   setState(() {
  //     user_data = result1;
  //   });
  //   return result1;
  // }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter, //! houni t7ot mnin degradation tbda
          end: Alignment.bottomCenter, //! houni t7ot degradation win toufa
          colors: [
            Colors.purple,
            Colors.blue
          ], //!houni zouz alwen te3 degradation w tnajm thot akther mn 2
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors
            .transparent, //! lezem t7oto transparent besh iben couleur container widget khater scaffold child te3 container moush el aaks
        body: Center(
          child: Column(
            //? column hya widget t5alik taaml brsha widgets ta7t b3adhom fi west children[]
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
