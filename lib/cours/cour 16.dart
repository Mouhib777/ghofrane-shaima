import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour16 extends StatefulWidget {
  @override
  State<cour16> createState() => _cour16State();
}

class _cour16State extends State<cour16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Les transports",
          style: GoogleFonts.montserrat(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/68-removebg-preview.png",
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
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Voyager/Partir à :",
                  style: GoogleFonts.montserrat(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/69-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Pied"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/70-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Velo"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/71-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Moto"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/72-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Cheval"),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
