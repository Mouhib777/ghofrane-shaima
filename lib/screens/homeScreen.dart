import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:e_learning/Model/cour.dart';
import 'package:e_learning/cours/cour%201.dart';
import 'package:e_learning/cours/cour%202.dart';

import 'package:e_learning/cours/cour%203.dart';
import 'package:e_learning/cours/cour%204.dart';
import 'package:e_learning/cours/cour%205.dart';
import 'package:e_learning/cours/cour%207.dart';

import 'package:e_learning/screens/profileScreen.dart';
import 'package:e_learning/screens/settingScreen.dart';
import 'package:e_learning/widget/card.dart';
import 'package:flutter/material.dart';

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
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
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
  Widget build(BuildContext context) {
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
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            transitionDuration: Duration.zero,
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    homeScreen()));
                      },
                      leading: Icon(Icons.home),
                      title: Text(
                        'Accueil',
                        style: GoogleFonts.montserrat(letterSpacing: 2),
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
                              builder: (context) => profileScreen(),
                            ));
                      },
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text(
                        'Profile',
                        style: GoogleFonts.montserrat(letterSpacing: 2),
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
                              builder: (context) => settingsScreen(),
                            ));
                      },
                      leading: Icon(Icons.settings),
                      title: Text(
                        'Paramétres',
                        style: GoogleFonts.montserrat(letterSpacing: 2),
                      ),
                    ),
                    Spacer(),
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
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour1(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 2') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour2(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 3') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour3(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 4') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour4(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 5') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour5(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 6') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour6(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 7') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour7(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 8') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour8(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 9') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour9(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 10') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour10(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 11') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour11(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 12') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour12(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 13') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour13(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 14') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour14(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 15') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour15(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 16') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour16(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 17') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour17(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 18') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour18(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 19') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour19(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 20') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour20(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 21') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour21(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 22') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour22(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 23') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour23(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 24') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour24(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 25') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour25(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 26') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour26(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 27') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour27(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 28') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour28(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 29') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour29(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 30') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour30(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 31') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour31(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 32') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour32(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 33') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour33(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 34') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour34(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 35') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour35(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 36') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour36(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 37') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour37(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 38') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour38(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 39') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour39(),
                                  ),
                                );
                              } else if (courInfo[index].name == 'cour 40') {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        cour40(),
                                  ),
                                );
                              } else {
                                return null;
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
                        },
                      )),
                )),
          )),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
