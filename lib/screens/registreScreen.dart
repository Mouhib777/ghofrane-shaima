import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class registreScreen extends StatefulWidget {
  const registreScreen({super.key});

  @override
  State<registreScreen> createState() => _registreScreenState();
}

class _registreScreenState extends State<registreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent, Colors.pink],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
        ));
  }
}
