import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour5 extends StatefulWidget {
  // const cour1({super.key});

  @override
  State<cour5> createState() => _cour5State();
}

class _cour5State extends State<cour5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "La famille",
          style: GoogleFonts.montserrat(
              letterSpacing: 3, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/15.png",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Les parents",
              style: GoogleFonts.montserrat(
                  letterSpacing: 4, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/16.png",
            ),
          ],
        ),
      ),
    );
  }
}
