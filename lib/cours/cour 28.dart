import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour28 extends StatefulWidget {
  final String? isAdmin;
  const cour28({super.key, required this.isAdmin});
  @override
  State<cour28> createState() => _cour28State();
}

class _cour28State extends State<cour28> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 28 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
