import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Text("질문 입니다"),
          const SizedBox(height: 150),
          ElevatedButton(onPressed: () {}, child: Text("대답 1")),
          ElevatedButton(onPressed: () {}, child: Text("대답 2")),
          ElevatedButton(onPressed: () {}, child: Text("대답 3")),
          ElevatedButton(onPressed: () {}, child: Text("대답 4")),
        ],
      ),
    );
  }
}
