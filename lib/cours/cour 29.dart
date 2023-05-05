import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour29 extends StatefulWidget {
  final String? isAdmin;
  const cour29({super.key, required this.isAdmin});
  @override
  State<cour29> createState() => _cour29State();
}

class _cour29State extends State<cour29> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 29 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
