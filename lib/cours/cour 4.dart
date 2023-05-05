import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour4 extends StatefulWidget {
  final String? isAdmin;
  const cour4({super.key, required this.isAdmin});

  @override
  State<cour4> createState() => _cour4State();
}

class _cour4State extends State<cour4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "L'alphabet",
          style: GoogleFonts.montserrat(
              letterSpacing: 3, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/14.png",
              height: 150,
            ),
            SizedBox(
              height: 85,
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
