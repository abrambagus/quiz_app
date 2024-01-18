import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The question..."),
          const SizedBox(
            height: 30,
          ),
          Answerbutton(
            "Answer 1",
            () {},
          ),
          Answerbutton(
            "Answer 2",
            () {},
          ),
          Answerbutton(
            "Answer 3",
            () {},
          ),
        ],
      ),
    );
  }
}
