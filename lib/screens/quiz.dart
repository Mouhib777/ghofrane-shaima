import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  int _totalScore = 0;
  double _totalScore_Perc = 0;
  String? perc = '0';

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'sou2el 1',
      'answers': [
        {'text': 'ijeba 1', 'score': 0},
        {'text': 'ijeba 2', 'score': 1},
        {'text': 'ijeba 3', 'score': 0},
        {'text': 'ijeba 4', 'score': 0},
      ],
    },
    {
      'questionText': 'sou2el 2',
      'answers': [
        {'text': 'ijeba 1', 'score': 0},
        {'text': 'ijeba 2', 'score': 1},
        {'text': 'ijeba 3', 'score': 0},
        {'text': 'ijeba 4', 'score': 0},
      ],
    },
    {
      'questionText': 'sou2el 3',
      'answers': [
        {'text': 'ijeba 1', 'score': 0},
        {'text': 'ijeba 2', 'score': 1},
        {'text': 'ijeba 3', 'score': 0},
        {'text': 'ijeba 4', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _totalScore_Perc = ((_totalScore / _questions.length) * 100);
      perc = _totalScore_Perc.toStringAsFixed(2);
      _questionIndex++;
      print(_questions.length);
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
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
      body: _questionIndex < _questions.length
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  _questions[_questionIndex]['questionText'].toString(),
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ...(_questions[_questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map((answer) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ElevatedButton(
                      onPressed: () => _answerQuestion(
                          int.parse(answer['score'].toString())),
                      child: Text(answer['text'].toString()),
                    ),
                  );
                }).toList(),
              ],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ikteb message houni',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Votre score est $perc%',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _resetQuiz,
                    child: Text('3awed'),
                  ),
                ],
              ),
            ),
    );
  }
}
