import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cour10 extends StatefulWidget {
  final String? isAdmin;
  const cour10({super.key, required this.isAdmin});
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
                SizedBox(
                  height: 30,
                ),
                Image.asset("assets/images/30-removebg-preview.png"),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Les saisons dans l'hémisphère nord ",
                  style: GoogleFonts.montserrat(),
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
                Image.asset("assets/images/31-removebg-preview.png"),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "le printemps (avril, mai, juin) ",
                  style: GoogleFonts.montserrat(),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset("assets/images/32-removebg-preview.png"),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "l'été (juillet, août, septembre)",
                  style: GoogleFonts.montserrat(),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset("assets/images/33-removebg-preview.png"),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "l'automne (octobre, novembre, décembre) ",
                  style: GoogleFonts.montserrat(),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset("assets/images/34-removebg-preview.png"),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "l'hiver (janvier, février, mars) ",
                  style: GoogleFonts.montserrat(),
                ),
                SizedBox(
                  height: 40,
                ),
              ])),
        ));
  }
}
