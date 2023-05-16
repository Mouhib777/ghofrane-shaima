import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String name = "John Doe";
  final String email = "johndoe@example.com";
  final String bio =
      "Notre application mobile de e-learning, développée en Flutter, vous permet d'apprendre de manière flexible et personnalisée où que vous soyez. Avec notre application, vous pouvez accéder à des cours en ligne interactifs, des quiz, des examens pratiques, et bien plus encore.";
  @override
  void initState() {
    getUser_Data();
    super.initState();
  }

  var user_data;

  Future<DocumentSnapshot> getUser_Data() async {
    final User? user1 = FirebaseAuth.instance.currentUser;
    String? _uid = user1!.uid;
    var result1 = await FirebaseFirestore.instance
        .collection('utilisateur')
        .doc(_uid)
        .get();
    setState(() {
      user_data = result1;
    });
    return result1;
  }

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
          "Profile",
          style: GoogleFonts.montserratAlternates(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                "assets/images/logo.png",
              ),
            ),
            SizedBox(height: 20),
            Text(
              user_data['nom'] + ' ' + user_data['prenom'],
              style: GoogleFonts.montserratAlternates(
                  fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Text(
              user_data['email'],
              style: GoogleFonts.montserrat(),
            ),
            SizedBox(height: 20),
            // Text(
            //   "Bio",
            //   style: GoogleFonts.montserratAlternates(
            //       fontSize: 20, fontWeight: FontWeight.w700),
            // ),
            SizedBox(height: 10),
            Text(
              bio,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(),
            ),
            SizedBox(
              height: 30,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              String? text;
                              return AlertDialog(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'modifier votre nom',
                                      style: GoogleFonts.montserratAlternates(),
                                    ),
                                  ],
                                ),
                                content: TextField(
                                  onChanged: (value) {
                                    text = value;
                                  },
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    child: Text(
                                      'Annuler',
                                      style: GoogleFonts.montserrat(),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    child: Text(
                                      'mettre à jour',
                                      style: GoogleFonts.montserrat(),
                                    ),
                                    onPressed: () async {
                                      final User? user =
                                          FirebaseAuth.instance.currentUser;
                                      final _uid = user!.uid;
                                      await FirebaseFirestore.instance
                                          .collection('utilisateur')
                                          .doc(_uid)
                                          .update({"nom": text});
                                      EasyLoading.showSuccess(
                                          "Votre nom à été mettre a jour");
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          "changer votre nom",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              String? text;
                              return AlertDialog(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'modifier votre prenom',
                                      style: GoogleFonts.montserratAlternates(),
                                    ),
                                  ],
                                ),
                                content: TextField(
                                  onChanged: (value) {
                                    text = value;
                                  },
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    child: Text(
                                      'Annuler',
                                      style: GoogleFonts.montserrat(),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    child: Text(
                                      'mettre à jour',
                                      style: GoogleFonts.montserrat(),
                                    ),
                                    onPressed: () async {
                                      final User? user =
                                          FirebaseAuth.instance.currentUser;
                                      final _uid = user!.uid;
                                      await FirebaseFirestore.instance
                                          .collection('utilisateur')
                                          .doc(_uid)
                                          .update({"prenom": text});
                                      EasyLoading.showSuccess(
                                          "Votre prenom à été mettre a jour");
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          "changer votre prenom",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              String? text;
                              return AlertDialog(
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'modifier votre mot de passe',
                                      style: GoogleFonts.montserratAlternates(
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                content: TextField(
                                  onChanged: (value) {
                                    text = value;
                                  },
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    child: Text(
                                      'Annuler',
                                      style: GoogleFonts.montserrat(),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    child: Text(
                                      'mettre à jour',
                                      style: GoogleFonts.montserrat(),
                                    ),
                                    onPressed: () async {
                                      final User? user =
                                          FirebaseAuth.instance.currentUser;
                                      final _uid = user!.uid;
                                      await FirebaseFirestore.instance
                                          .collection('utilisateur')
                                          .doc(_uid)
                                          .update({"password": text});
                                      EasyLoading.showSuccess(
                                          "Votre password à été mettre a jour");
                                      try {
                                        // First, sign in with the user's email and current password
                                        UserCredential userCredential =
                                            await FirebaseAuth.instance
                                                .signInWithEmailAndPassword(
                                          email: user_data["email"],
                                          password: user_data["password"],
                                        );

                                        // Then, update the user's password with the new password
                                        await userCredential.user!
                                            .updatePassword(text!);

                                        print("Password updated successfully");
                                      } on FirebaseAuthException catch (e) {
                                        if (e.code == 'wrong-password') {
                                          print('Wrong password provided');
                                        } else {
                                          print(
                                              'Error updating password: ${e.message}');
                                        }
                                      }
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          "changer votre mot de passe",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
