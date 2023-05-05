import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour38 extends StatefulWidget {
  final String? isAdmin;
  const cour38({super.key, required this.isAdmin});
  @override
  State<cour38> createState() => _cour38State();
}

class _cour38State extends State<cour38> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 38 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
