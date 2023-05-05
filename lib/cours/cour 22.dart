import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour22 extends StatefulWidget {
  final String? isAdmin;
  const cour22({super.key, required this.isAdmin});
  @override
  State<cour22> createState() => _cour22State();
}

class _cour22State extends State<cour22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 22 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
