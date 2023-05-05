import 'dart:async';
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
        if (user == null) {
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

    super.initState();
  }

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
