import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Column(
          children: [
            Text("Choose one"),
            RaisedButton(
              child: Text("option 1"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Option 2"),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
