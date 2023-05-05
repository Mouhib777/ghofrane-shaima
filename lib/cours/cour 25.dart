import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour25 extends StatefulWidget {
  final bool? isAdmin;
  const cour25({super.key, required this.isAdmin});
  @override
  State<cour25> createState() => _cour25State();
}

class _cour25State extends State<cour25> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 25 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
