import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour27 extends StatefulWidget {
  final bool? isAdmin;
  const cour27({super.key, required this.isAdmin});
  @override
  State<cour27> createState() => _cour27State();
}

class _cour27State extends State<cour27> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 27 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
