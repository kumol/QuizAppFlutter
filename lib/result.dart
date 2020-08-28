import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);
  String get resultPharse {
    return totalScore > 10 ? "Did Well" : "Best of luck for next time!";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          Text(
            resultPharse,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text("Reset Quiz"),
            onPressed: resetQuiz,
          )
        ],
      )),
    );
  }
}
