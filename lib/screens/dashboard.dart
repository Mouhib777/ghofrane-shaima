import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning/screens/userDetails.dart';
import 'package:e_learning/service/userService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

class dashboardScreen extends StatefulWidget {
  const dashboardScreen({super.key});

  @override
  State<dashboardScreen> createState() => _dashboardScreenState();
}

class _dashboardScreenState extends State<dashboardScreen> {
  @override
  Widget build(BuildContext context) {
    // final User? user = FirebaseAuth.instance.currentUser;
    // final _uid = user!.uid;
    user_service _user_service = user_service();
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
          "Tous les utilisateur",
          style: GoogleFonts.montserrat(),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: StreamBuilder<QuerySnapshot>(
              stream: _user_service.getAllUser(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot?> snapshot) {
                // }
                return Column(
                  verticalDirection: VerticalDirection.down,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Text('Tous les utilisateurs',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.red,
                                      fontSize: 21,
                                      letterSpacing: 4))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40)),
                            color: Colors.white),
                        child: ListView(
                            scrollDirection: Axis.vertical,
                            children: snapshot.data!.docs
                                .map((DocumentSnapshot document) {
                              return InkWell(
                                onLongPress: () {
                                  EasyLoading.showInfo(document['id']);
                                  print(document['id']);
                                  print(document['email']);
                                  print(document['nom']);
                                  print(document['prenom']);
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Container(
                                          decoration: new BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.transparent,
                                          ),
                                          child: ListTile(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 15.0,
                                                      vertical: 0.0),
                                              leading: Container(
                                                padding: EdgeInsets.only(
                                                    right: 12.0),
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        right: new BorderSide(
                                                            width: 1.0,
                                                            color: Color(
                                                                0xFFD9D9D9)))),
                                                child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    radius: 30,
                                                    backgroundImage: AssetImage(
                                                        "assets/images/logo.png")),
                                              ),
                                              title: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      // ),
                                                      SizedBox(
                                                        height: 0,
                                                      ),
                                                      Text(
                                                        "${document['nom']} ${document['prenom']}",
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              subtitle: Text(
                                                document['email'],
                                              ),
                                              trailing: Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Color(0xFFD9D9D9),
                                                  size: 30.0)),
                                        )),
                                    Divider(
                                      color: Color(0xFFD9D9D9),
                                      indent:
                                          MediaQuery.of(context).size.width *
                                              0.21,
                                      endIndent:
                                          MediaQuery.of(context).size.width *
                                              0.21,
                                      thickness: 1.5,
                                    )
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => userDetails(
                                          name:
                                              "${document['nom']} ${document['prenom']}",
                                          uid: "${document['id']}",
                                        ),
                                      ));
                                },
                                // onLongPress: () async {
                                //   await FirebaseFirestore.instance
                                //       .collection("utlisateur")
                                //       .doc(document['id'])
                                //       .delete()
                                //       .then((value) => print(
                                //           'Document deleted successfully.'))
                                //       .catchError((error) => print(
                                //           'Failed to delete document: $error'));
                                // }
                              );
                            }).toList()),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
