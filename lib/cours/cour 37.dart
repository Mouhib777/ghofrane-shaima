import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour37 extends StatefulWidget {
  final bool? isAdmin;
  const cour37({super.key, required this.isAdmin});
  @override
  State<cour37> createState() => _cour37State();
}

class _cour37State extends State<cour37> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 37 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
