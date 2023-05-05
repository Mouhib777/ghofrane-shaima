import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour15 extends StatefulWidget {
  final bool? isAdmin;
  const cour15({super.key, required this.isAdmin});
  @override
  State<cour15> createState() => _cour15State();
}

class _cour15State extends State<cour15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "D’où venez-vous ?",
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
                "assets/images/66-removebg-preview.png",
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
                "assets/images/67-removebg-preview.png",
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
