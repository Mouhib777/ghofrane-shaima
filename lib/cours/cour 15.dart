import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour15 extends StatefulWidget {
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
      body: Column(
        children: [],
      ),
    );
  }
}
