import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour8 extends StatefulWidget {
  final String? isAdmin;
  const cour8({super.key, required this.isAdmin});
  @override
  State<cour8> createState() => _cour8State();
}

class _cour8State extends State<cour8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demander / donner son adresse\net son numéro de téléphone",
          style: GoogleFonts.montserrat(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/19.png",
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
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/18-5.png",
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
