import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour39 extends StatefulWidget {
  final bool? isAdmin;
  const cour39({super.key, required this.isAdmin});
  @override
  State<cour39> createState() => _cour39State();
}

class _cour39State extends State<cour39> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 39 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
