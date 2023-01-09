import 'package:flutter/material.dart';
import 'package:personal_quiz/question_list.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({
    Key? key,
    required this.answerPressed,
    required this.questionIndex,
  }) : super(key: key);

  final Function answerPressed;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Text(questionList[questionIndex]["questionText"]),
          const SizedBox(height: 150),
          ElevatedButton(
            onPressed: () => answerPressed(),
            child: Text(questionList[questionIndex]["answers"][0]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(),
            child: Text(questionList[questionIndex]["answers"][1]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(),
            child: Text(questionList[questionIndex]["answers"][2]["text"]),
          ),
          ElevatedButton(
            onPressed: () => answerPressed(),
            child: Text(questionList[questionIndex]["answers"][3]["text"]),
          ),
        ],
      ),
    );
  }
}
