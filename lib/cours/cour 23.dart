import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour23 extends StatefulWidget {
  final bool? isAdmin;
  const cour23({super.key, required this.isAdmin});
  @override
  State<cour23> createState() => _cour23State();
}

class _cour23State extends State<cour23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 23 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
