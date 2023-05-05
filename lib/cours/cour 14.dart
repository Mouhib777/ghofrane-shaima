import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour14 extends StatefulWidget {
  final String? isAdmin;
  const cour14({super.key, required this.isAdmin});
  @override
  State<cour14> createState() => _cour14State();
}

class _cour14State extends State<cour14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Où allez-vous ?",
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
                height: 80,
              ),
              Image.asset(
                "assets/images/64-removebg-preview.png",
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
                height: 50,
              ),
              Image.asset(
                "assets/images/65-removebg-preview.png",
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
      ),
    );
  }
}
