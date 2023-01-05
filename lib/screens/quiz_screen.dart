import 'package:flutter/material.dart';
import 'package:personal_quiz/question_list.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({
    Key? key,
    required this.answerPressed,
  }) : super(key: key);

  final Function answerPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Text(questionList[0]["questionText"]),
          const SizedBox(height: 150),
          ElevatedButton(
            onPressed: () => answerPressed(),
            child: Text(questionList[0]["answers"][0]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(),
            child: Text("대답 2"),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(),
            child: Text("대답 3"),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(),
            child: Text("대답 4"),
          ),
        ],
      ),
    );
  }
}
