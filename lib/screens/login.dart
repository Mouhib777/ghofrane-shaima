import 'package:animate_do/animate_do.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:e_learning/screens/homeScreen.dart';
import 'package:e_learning/screens/registreScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  String? email;
  String? password;
  var _email = TextEditingController();
  var _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blueAccent, Colors.pink],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInDown(
                  child: SizedBox(
                      child: Image.asset(
                    "assets/images/logo.png",
                    height: 180,
                    width: 180,
                  )),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                FadeInUp(
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.478,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(113, 255, 255, 255),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 7, 30, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Se connecter",
                                style: GoogleFonts.montserrat(
                                    fontSize: 40,
                                    letterSpacing: 3,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(197, 255, 255, 255)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Addresse e-mail",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18, letterSpacing: 3),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintStyle: GoogleFonts.montserrat(),
                                      labelStyle: GoogleFonts.montserrat(),
                                      counterStyle: GoogleFonts.montserrat(),
                                      hintText: 'address@mail.com',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(35)),
                                      labelText: '  Addresse e-mail',
                                    ),
                                    autofocus: false,
                                    keyboardType: TextInputType.emailAddress,
                                    // maxLength: 40,
                                    onChanged: (value) {
                                      email = value;
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Mot de passe",
                                    style: GoogleFonts.poppins(
                                        fontSize: 18, letterSpacing: 3),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintStyle: GoogleFonts.montserrat(),
                                        labelStyle: GoogleFonts.montserrat(),
                                        counterStyle: GoogleFonts.montserrat(),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                        labelText: '  Password',
                                        hintText: 'pass1234'),
                                    autofocus: false,
                                    keyboardType: TextInputType.visiblePassword,
                                    onChanged: (data) {
                                      password = data;
                                    },
                                    obscureText: true,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Text(
                                      "Connectez-vous",
                                      style: GoogleFonts.montserrat(),
                                    ),
                                    onPressed: () async {
                                      FocusScopeNode currentFocus =
                                          FocusScope.of(context);
                                      if (!currentFocus.hasPrimaryFocus) {
                                        currentFocus.unfocus();
                                      }
                                      //EasyLoading.showToast('Loading...');
                                      try {
                                        UserCredential user = await FirebaseAuth
                                            .instance
                                            .signInWithEmailAndPassword(
                                                email: email!.trim(),
                                                password: password!.trim());
                                        //  CircularProgressIndicator();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    homeScreen(),
                                                maintainState: false));
                                      } on FirebaseAuthException catch (ex) {
                                        if (ex.code == 'user-not-found') {
                                          print("not found");
                                          AnimatedSnackBar.material(
                                            "pas d'utilisateur avec cet e-mail",
                                            type: AnimatedSnackBarType.error,
                                            duration: Duration(seconds: 4),
                                            mobileSnackBarPosition:
                                                MobileSnackBarPosition
                                                    .bottom, // Position of snackbar on mobile devices
                                          ).show(context);
                                        } else if (ex.code ==
                                            'wrong-password') {
                                          AnimatedSnackBar.material(
                                            'mot de passe incorrect',
                                            type: AnimatedSnackBarType.error,
                                            duration: Duration(seconds: 6),
                                            mobileSnackBarPosition:
                                                MobileSnackBarPosition
                                                    .bottom, // Position of snackbar on mobile devices
                                            // Position of snackbar on desktop devices
                                          ).show(context);
                                        } else if (ex.code == 'invalid-email') {
                                          AnimatedSnackBar.material(
                                            'addresse-email est invalide',
                                            type: AnimatedSnackBarType.error,
                                            duration: Duration(seconds: 4),
                                            mobileSnackBarPosition:
                                                MobileSnackBarPosition
                                                    .bottom, // Position of snackbar on mobile devices
                                            // Position of snackbar on desktop devices
                                          ).show(context);
                                        }
                                      }
                                    },
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  FadeIn(
                                    delay: Duration(milliseconds: 1500),
                                    child: InkWell(
                                      child: Text(
                                        "inscrivez-vous",
                                        style: GoogleFonts.montserrat(
                                            letterSpacing: 3,
                                            color: Colors.white),
                                      ),
                                      onTap: () {
                                        Navigator.of(context).push(
                                            PageRouteBuilder(
                                                transitionDuration:
                                                    Duration.zero,
                                                pageBuilder: (context,
                                                        animation,
                                                        secondaryAnimation) =>
                                                    registreScreen()));
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Text("data")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
