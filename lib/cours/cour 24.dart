import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour24 extends StatefulWidget {
  final bool? isAdmin;
  const cour24({super.key, required this.isAdmin});
  @override
  State<cour24> createState() => _cour24State();
}

class _cour24State extends State<cour24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 24 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
