import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class a_propos extends StatefulWidget {
  const a_propos({super.key});

  @override
  State<a_propos> createState() => _a_proposState();
}

class _a_proposState extends State<a_propos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: FadeInDown(
          child: Text(
            "A propos",
            style: GoogleFonts.montserrat(letterSpacing: 2),
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
