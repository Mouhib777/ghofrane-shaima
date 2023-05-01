import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour18 extends StatefulWidget {
  @override
  State<cour18> createState() => _cour18State();
}

class _cour18State extends State<cour18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "La ville",
          style: GoogleFonts.montserrat(letterSpacing: 3),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
