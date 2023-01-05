import 'package:flutter/material.dart';
import 'package:personal_quiz/screens/quiz_screen.dart';

void main() {
  runApp(
    const MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerPressed() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("나만의 퀴즈 만들기"),
      ),
      body: QuizScreen(
        answerPressed: answerPressed,
      ),
    );
  }
}
