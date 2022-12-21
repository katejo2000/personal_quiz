import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("result page"),
          ElevatedButton(
            onPressed: () {},
            child: Text("go back"),
          ),
        ],
      ),
    );
  }
}
