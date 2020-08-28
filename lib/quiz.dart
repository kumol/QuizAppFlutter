import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function getSelect;
  final int index;
  Quiz({this.question, this.getSelect, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(question[index]["questionText"]),
        ...(question[index]["answers"] as List<String>).map((answer) {
          return Answer(getSelect, answer);
        }).toList()
      ],
    ));
  }
}
