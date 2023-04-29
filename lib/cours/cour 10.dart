import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cour10 extends StatefulWidget {
  @override
  State<cour10> createState() => _cour10State();
}

class _cour10State extends State<cour10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "La date",
            style: GoogleFonts.montserrat(),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset("assets/images/27-removebg-preview.png"),
                SizedBox(
                  height: 30,
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
                Image.asset("assets/images/28-removebg-preview.png"),
                SizedBox(
                  height: 30,
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
                Image.asset("assets/images/29-removebg-preview.png"),
                SizedBox(
                  height: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.speaker_3_fill,
                    size: 40,
                  ),
                ),
              ])),
        ));
  }
}
