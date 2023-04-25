import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:e_learning/Model/cour.dart';
import 'package:e_learning/cours/cour1.dart';
import 'package:e_learning/cours/cour2.dart';
import 'package:e_learning/cours/cour3.dart';
import 'package:e_learning/cours/cour4.dart';

import 'package:e_learning/screens/profileScreen.dart';
import 'package:e_learning/screens/settingScreen.dart';
import 'package:e_learning/widget/card.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdropColor: Colors.blue,
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: BoxDecoration(
          // NOTICE: Uncomment if you want to add shadow behind the page.
          // Keep in mind that it may cause animation jerks.
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.pink,
              blurRadius: 100,
            ),
          ],
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
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topRight,
          //     end: Alignment.topLeft,
          //     colors: [
          //       Colors.purple,
          //       Colors.blue,
          //     ],
          //   ),
          // ),
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
                child: InkWell(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,
                        child: Swiper(
                          itemCount: courInfo.length,
                          itemWidth: MediaQuery.of(context).size.width,
                          itemHeight: MediaQuery.of(context).size.height,
                          layout: SwiperLayout.TINDER,
                          pagination: SwiperPagination(
                              builder: DotSwiperPaginationBuilder(
                                  color: Colors.pink,
                                  activeColor: Colors.blue,
                                  activeSize: 12,
                                  space: 4)),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                if (courInfo[index].name == 'cour 1') {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              cour1()));
                                } else if (courInfo[index].name == 'cour 2') {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              cour2()));
                                } else if (courInfo[index].name == 'cour 3') {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              cour3()));
                                } else if (courInfo[index].name == 'cour 4') {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              cour4()));
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
                                        description:
                                            courInfo[index].description,
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
                        ))),
              )),
        ));
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
