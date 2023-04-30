import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour17 extends StatefulWidget {
  @override
  State<cour17> createState() => _cour17State();
}

class _cour17State extends State<cour17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Se situer dans l’espace",
          style: GoogleFonts.montserrat(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/86-removebg-preview.png",
            ),
            SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.speaker_3_fill,
                size: 40,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/87-removebg-preview.png",
            ),
            SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.speaker_3_fill,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
