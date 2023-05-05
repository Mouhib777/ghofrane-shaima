import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour3 extends StatefulWidget {
  final bool? isAdmin;
  const cour3({super.key, required this.isAdmin});

  @override
  State<cour3> createState() => _cour3State();
}

class _cour3State extends State<cour3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Comment ça va ?",
          style: GoogleFonts.montserrat(
              letterSpacing: 3, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/13.png"),
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
