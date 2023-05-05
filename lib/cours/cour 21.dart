import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour21 extends StatefulWidget {
  final bool? isAdmin;
  const cour21({super.key, required this.isAdmin});
  @override
  State<cour21> createState() => _cour21State();
}

class _cour21State extends State<cour21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 21 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
