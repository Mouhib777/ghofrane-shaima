import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour36 extends StatefulWidget {
  final String? isAdmin;
  const cour36({super.key, required this.isAdmin});
  @override
  State<cour36> createState() => _cour36State();
}

class _cour36State extends State<cour36> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 36 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
