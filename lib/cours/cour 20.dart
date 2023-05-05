import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class cour20 extends StatefulWidget {
  final bool? isAdmin;
  const cour20({super.key, required this.isAdmin});
  @override
  State<cour20> createState() => _cour20State();
}

class _cour20State extends State<cour20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "À la pâtisserie",
          style: GoogleFonts.montserrat(letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset("assets/images/111-removebg-preview.png")
            ],
          ),
        ),
      ),
    );
  }
}
