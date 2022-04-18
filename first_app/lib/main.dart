import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  void CheckAnswer() {
    setState(() => {questionIndex = (questionIndex + 1) % 2});
  }

  List<String> questions = [
    "Who are thou?",
    "What is thy name?",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("This is the app bar title")),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(child: Text("Click me!"), onPressed: CheckAnswer),
          ],
        ),
      ),
    );
  }
}
