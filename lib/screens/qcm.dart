import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QCM extends StatefulWidget {
  @override
  _QCMState createState() => _QCMState();
}

class _QCMState extends State<QCM> {
  int score = 0;

  void answer(bool isCorrect) {
    setState(() {
      score += isCorrect ? 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'QCM',
            style: GoogleFonts.montserratAlternates(
                letterSpacing: 2, fontSize: 30),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question 1',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'houni 7ot sou2el',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('ijeba loula'),
              onPressed: () {
                answer(true);
              },
            ),
            ElevatedButton(
              child: Text('ijeba 2'),
              onPressed: () {
                answer(false);
              },
            ),
            ElevatedButton(
              child: Text('ijeba 3'),
              onPressed: () {
                answer(false);
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Score: $score',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
