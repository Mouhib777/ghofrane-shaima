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
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Voyager/Partir en :",
                  style: GoogleFonts.montserrat(),
                ),
              ],
            ),
            Image.asset(
              "assets/images/73-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Voiture"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/74-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Taxi"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/75-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Autobus"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/76-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Tramway"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/77-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Métro"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/78-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Train"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/79-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Avion"),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/80-removebg-preview.png",
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.speaker_3_fill,
                size: 40,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/81-removebg-preview.png",
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.speaker_3_fill,
                size: 40,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Un ticket de métro/de bus"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/82-removebg-preview.png",
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.speaker_3_fill,
                size: 40,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Un aller-retour (2 tickets)"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/83-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Un carnet = 10 tickets"),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/84-removebg-preview.png",
            ),
            SizedBox(
              height: 10,
            ),
            Text("Un billet de train"),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
