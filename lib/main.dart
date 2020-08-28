import 'package:first_flutter_app/quiz.dart';
import 'package:flutter/material.dart';

import 'quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _action(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print("clicked");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What is your favourite Person?",
        "answers": [
          {"text": "Nazrul", "score": 10},
          {"text": "Rabindra", "score": 3},
          {"text": "Salman", "score": 9},
          {"text": "Amir", "score": 6}
        ]
      },
      {
        "questionText": "What is your favourite Book?",
        "answers": [
          {"text": "Poem", "score": 5},
          {"text": "Drama", "score": 8},
          {"text": "Novel", "score": 6},
          {"text": "Story", "score": 10}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY APP"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                question: questions,
                getSelect: _action,
                index: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
