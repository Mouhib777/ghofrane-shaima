import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour7 extends StatefulWidget {
  final bool? isAdmin;
  const cour7({super.key, required this.isAdmin});

  @override
  State<cour7> createState() => _cour7State();
}

class _cour7State extends State<cour7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "J'habite",
          style: GoogleFonts.montserrat(
              letterSpacing: 3, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/18.png"),
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
          ],
        ),
      ),
    );
  }
}
