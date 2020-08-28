import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAnswer;
  final String option;
  Answer(this.selectAnswer, this.option);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(option),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectAnswer,
      ),
    );
  }
}
