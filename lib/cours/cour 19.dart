import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour19 extends StatefulWidget {
  final bool? isAdmin;
  const cour19({super.key, required this.isAdmin});
  // const cour2({super.key});

  @override
  State<cour19> createState() => _cour19State();
}

class _cour19State extends State<cour19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "À la boulangerie",
          style: GoogleFonts.montserrat(letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("assets/images/110-removebg-preview.png")],
          ),
        ),
      ),
    );
  }
}
