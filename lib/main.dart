import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void action() {
    setState(() {
      _questionIndex += 1;
    });
    print("clicked");
  }

  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite Person?",
      "What is your favourite Book?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY APP"),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            RaisedButton(
              child: Text("option 1"),
              onPressed: action,
            ),
            RaisedButton(
              child: Text("Option 2"),
              onPressed: () => print("clicked one"),
            )
          ],
        ),
      ),
    );
  }
}
