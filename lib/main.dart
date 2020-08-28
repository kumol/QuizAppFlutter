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
  void _action() {
    setState(() {
      _questionIndex += 1;
    });
    print("clicked");
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What is your favourite Person?",
        "answers": ["Nazrul", "Rabindra", "Salman", "Amir"]
      },
      {
        "questionText": "What is your favourite Book?",
        "answers": ["Poem", "Drama", "Novel", "Story"]
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
            : Result(),
      ),
    );
  }
}
