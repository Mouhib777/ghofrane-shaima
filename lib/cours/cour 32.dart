import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour32 extends StatefulWidget {
  final String? isAdmin;
  const cour32({super.key, required this.isAdmin});
  @override
  State<cour32> createState() => _cour32State();
}

class _cour32State extends State<cour32> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 32 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
