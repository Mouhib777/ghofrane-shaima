import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  final GlobalKey<RefreshIndicatorState> _refresh =
      GlobalKey<RefreshIndicatorState>();
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
        title: FadeInDown(
          child: Text(
            "Mes données",
            style: GoogleFonts.montserrat(letterSpacing: 2),
          ),
        ),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        key: _refresh,
        onRefresh: () => getUser_Data(),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      user_data["nom"],
                      style: GoogleFonts.montserratAlternates(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
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
                                    textStyle:
                                        Theme.of(context).textTheme.labelLarge,
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
                                    textStyle:
                                        Theme.of(context).textTheme.labelLarge,
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
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      user_data["prenom"],
                      style: GoogleFonts.montserratAlternates(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
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
                                    textStyle:
                                        Theme.of(context).textTheme.labelLarge,
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
                                    textStyle:
                                        Theme.of(context).textTheme.labelLarge,
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
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      user_data["password"],
                      style: GoogleFonts.montserratAlternates(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
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
                                    textStyle:
                                        Theme.of(context).textTheme.labelLarge,
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
                                    textStyle:
                                        Theme.of(context).textTheme.labelLarge,
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
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
