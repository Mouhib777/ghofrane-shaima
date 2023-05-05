import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour12 extends StatefulWidget {
  final bool? isAdmin;
  const cour12({super.key, required this.isAdmin});
  // const cour21({super.key});

  @override
  State<cour12> createState() => _cour12State();
}

class _cour12State extends State<cour12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "S'excuser",
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
                height: 40,
              ),
              Image.asset(
                "assets/images/41-removebg-preview.png",
              ),
              SizedBox(
                height: 60,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.speaker_3_fill,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Image.asset(
                "assets/images/42-removebg-preview.png",
              ),
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
      ),
    );
  }
}
