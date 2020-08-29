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
      },
      {
        "questionText": "What is your favourite Color?",
        "answers": [
          {"text": "Red", "score": 7},
          {"text": "Green", "score": 8},
          {"text": "Black", "score": 2},
          {"text": "White", "score": 10}
        ]
      },
      {
        "questionText": "What is your favourite hobby?",
        "answers": [
          {"text": "Reading", "score": 5},
          {"text": "Cycling", "score": 8},
          {"text": "Swiming", "score": 10},
          {"text": "Facebooking", "score": 4}
        ]
      },
      {
        "questionText": "What is your favourite Journey?",
        "answers": [
          {"text": "Boat", "score": 5},
          {"text": "Bus", "score": 8},
          {"text": "Air", "score": 6},
          {"text": "Train", "score": 10}
        ]
      },
      {
        "questionText": "What is your favourite Place to visit?",
        "answers": [
          {"text": "Hamham", "score": 4},
          {"text": "Ratargul", "score": 8},
          {"text": "Lalakhal", "score": 4},
          {"text": "Cox's Bazar", "score": 10}
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
