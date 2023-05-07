import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_learning/Model/cour.dart';
import 'package:e_learning/cours/cour%201.dart';
import 'package:e_learning/cours/cour%202.dart';

import 'package:e_learning/cours/cour%203.dart';
import 'package:e_learning/cours/cour%204.dart';
import 'package:e_learning/cours/cour%205.dart';
import 'package:e_learning/cours/cour%207.dart';
import 'package:e_learning/screens/login.dart';

import 'package:e_learning/screens/profileScreen.dart';
import 'package:e_learning/screens/a_propos.dart';
import 'package:e_learning/widget/card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:appinio_swiper/appinio_swiper.dart';

import '../cours/cour 10.dart';
import '../cours/cour 11.dart';
import '../cours/cour 12.dart';
import '../cours/cour 13.dart';
import '../cours/cour 14.dart';
import '../cours/cour 15.dart';
import '../cours/cour 16.dart';
import '../cours/cour 17.dart';
import '../cours/cour 18.dart';
import '../cours/cour 19.dart';
import '../cours/cour 20.dart';
import '../cours/cour 21.dart';
import '../cours/cour 22.dart';
import '../cours/cour 23.dart';
import '../cours/cour 24.dart';
import '../cours/cour 25.dart';
import '../cours/cour 26.dart';
import '../cours/cour 27.dart';
import '../cours/cour 28.dart';
import '../cours/cour 29.dart';
import '../cours/cour 30.dart';
import '../cours/cour 31.dart';
import '../cours/cour 32.dart';
import '../cours/cour 33.dart';
import '../cours/cour 34.dart';
import '../cours/cour 35.dart';
import '../cours/cour 36.dart';
import '../cours/cour 37.dart';
import '../cours/cour 38.dart';
import '../cours/cour 39.dart';
import '../cours/cour 40.dart';
import '../cours/cour 6.dart';
import '../cours/cour 8.dart';
import '../cours/cour 9.dart';

class homeScreen extends StatefulWidget {
  final String? isAdmin;
  const homeScreen({super.key, required this.isAdmin});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  String? text;
  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: const Text('1'),
      color: Colors.blue,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      color: Colors.red,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: Colors.purple,
    )
  ];
  final _advancedDrawerController = AdvancedDrawerController();
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
    print(widget.isAdmin);
    return SizedBox(
      child: AdvancedDrawer(
          backdropColor: Colors.blue,
          controller: _advancedDrawerController,
          animationCurve: Curves.easeIn,
          animationDuration: Duration(milliseconds: 300),
          animateChildDecoration: true,
          rtlOpening: false,
          // openScale: 1.0,
          disabledGestures: false,
          childDecoration: BoxDecoration(
            // NOTICE: Uncomment if you want to add shadow behind the page.
            // Keep in mind that it may cause animation jerks.
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //     color: Colors.pink,
            //     blurRadius: 100,
            //   ),
            // ],
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          drawer: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.pink],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: ListTileTheme(
                textColor: Colors.white,
                iconColor: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 128.0,
                      height: 128.0,
                      margin: EdgeInsets.only(
                        top: 24.0,
                        bottom: 64.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                    // ListTile(
                    //   onTap: () {
                    //     Navigator.of(context).push(PageRouteBuilder(
                    //         transitionDuration: Duration.zero,
                    //         pageBuilder:
                    //             (context, animation, secondaryAnimation) =>
                    //                 homeScreen(isAdmin:'' ,)));
                    //   },
                    //   leading: Icon(Icons.home),
                    //   title: Text(
                    //     'Accueil',
                    //     style: GoogleFonts.montserrat(letterSpacing: 2),
                    //   ),
                    // ),
                    SizedBox(
                      height: 40,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => profileScreen(),
                            ));
                      },
                      leading: widget.isAdmin == 'true'
                          ? Icon(Icons.admin_panel_settings)
                          : Icon(Icons.people),
                      title: Text(
                        widget.isAdmin == 'true' ? 'Adminstateur' : 'Profile',
                        style: GoogleFonts.montserratAlternates(
                            letterSpacing: 2, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => a_propos(),
                            ));
                      },
                      leading: Icon(Icons.info),
                      title: Text(
                        'A propos',
                        style: GoogleFonts.montserratAlternates(
                            letterSpacing: 2, fontSize: 20),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Text("deconnecter"),
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginScreen(),
                            ));
                      },
                    ),
                    DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white54,
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 16.0,
                        ),
                        child: Text('By Ghofrane & Shaima'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: Container(
            color: Colors.white,
            child: Scaffold(
                backgroundColor: Colors.transparent,
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
                  title: FadeIn(
                    child: Text(
                      "Quebec centre",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  centerTitle: true,
                  leading: IconButton(
                      onPressed: _handleMenuButtonPressed,
                      icon: ValueListenableBuilder<AdvancedDrawerValue>(
                        valueListenable: _advancedDrawerController,
                        builder: (_, value, __) {
                          return AnimatedSwitcher(
                            duration: Duration(milliseconds: 250),
                            child: Icon(
                              value.visible ? Icons.clear : Icons.menu,
                              key: ValueKey<bool>(value.visible),
                            ),
                          );
                        },
                      )),
                ),
                body: FadeInRightBig(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width,
                      child: Swiper(
                        itemCount: courInfo.length,
                        itemWidth: MediaQuery.of(context).size.width,
                        itemHeight: MediaQuery.of(context).size.height,
                        layout: SwiperLayout.DEFAULT,
                        pagination: SwiperPagination(
                            builder: FractionPaginationBuilder(
                          color: Colors.grey,
                          activeColor: Colors.pink,
                          // activeSize: 12,
                          // space: 2
                        )),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              if (courInfo[index].name == 'cour 1') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour1(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour1(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 2') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour2(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour2(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 3') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour3(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour3(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 4') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour4(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour4(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 5') {
                                if (widget.isAdmin == "true") {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour5(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour5(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 6') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour6(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour6(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 7') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour7(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour7(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 8') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour8(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour8(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 9') {
                                if (widget.isAdmin == "true") {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour9(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour9(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 10') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour10(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour10(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 11') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour11(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour11(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 12') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour12(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour12(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 13') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour13(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour13(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 14') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour14(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour14(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 15') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour15(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour15(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 16') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour16(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour16(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 17') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour17(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour17(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 18') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour18(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour18(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 19') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour19(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour19(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 20') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour20(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour20(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 21') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour21(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour21(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 22') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour22(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour22(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 23') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour23(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour23(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 24') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour24(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour24(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 25') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour25(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour25(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 26') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour26(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour26(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 27') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour27(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour27(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 28') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour28(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour28(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 29') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour29(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour29(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 30') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour30(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour30(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 31') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour31(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour31(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 32') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour32(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour32(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 33') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour33(isAdmin: "true"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 34') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour34(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour34(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 35') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour35(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour35(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 36') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour36(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour36(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 37') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour37(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour37(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 38') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour38(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour38(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 39') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour39(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour39(isAdmin: "false"),
                                    ),
                                  );
                                }
                              } else if (courInfo[index].name == 'cour 40') {
                                if (widget.isAdmin == 'true') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour40(isAdmin: "true"),
                                    ),
                                  );
                                } else if (widget.isAdmin == 'false') {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          cour40(isAdmin: "false"),
                                    ),
                                  );
                                }
                              }
                            },
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    CustomCard(
                                      name: courInfo[index].name,
                                      description: courInfo[index].description,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 140, top: 100),
                                  child: Hero(
                                      tag: courInfo[index].position,
                                      child: Image.asset(
                                        courInfo[index].iconImage,
                                        height: 150,
                                      )),
                                )
                              ],
                            ),
                          );

                          // return Stack(
                          //   children: [
                          //     Column(
                          //       children: [
                          //         const SizedBox(
                          //           height: 100,
                          //         ),
                          //         CustomCard(
                          //           name: courInfo[index].name,
                          //           description: courInfo[index].description,
                          //         ),
                          //       ],
                          //     ),
                          //     Padding(
                          //       padding:
                          //           const EdgeInsets.only(left: 140, top: 100),
                          //       child: Hero(
                          //           tag: courInfo[index].position,
                          //           child: Image.asset(
                          //             courInfo[index].iconImage,
                          //             height: 150,
                          //           )),
                          //     )
                          //   ],
                          // );
                        },
                      )),
                )),
          )),
    );
  }

  void getCourNumber() {
    var collectionRef = FirebaseFirestore.instance
        .collection('cours')
        .get()
        .then((querySnapshot) {
      final int numOfCours = querySnapshot.size;
    });
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
