import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.totalScore,
    required this.resetQuiz,
  }) : super(key: key);

  final int totalScore;
  final Function resetQuiz;

  @override
  Widget build(BuildContext context) {
    String resultMessage;

    if (totalScore <= 10) {
      resultMessage = '당신은 무해하고 귀여운 토끼입니다!';
    } else if (totalScore <= 14) {
      resultMessage = '당신은 신난 강아지입니다!';
    } else if (totalScore <= 18) {
      resultMessage = '당신은 앙칼진 고양이입니다!';
    } else {
      resultMessage = '당신은 맹렬한 호랑이입니다!';
    }

    return Center(
      child: Column(
        children: [
          SizedBox(height: 150,),
          Text(resultMessage),
          SizedBox(height: 100,),
          ElevatedButton(
            onPressed: () => resetQuiz(),
            child: Text("reset quiz"),
          ),
        ],
      ),
    );
  }
}
