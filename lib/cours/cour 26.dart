import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cour26 extends StatefulWidget {
  final String? isAdmin;
  const cour26({super.key, required this.isAdmin});
  @override
  State<cour26> createState() => _cour26State();
}

class _cour26State extends State<cour26> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cour 26 "),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
