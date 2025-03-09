import 'package:flutter/material.dart';
import 'package:quiz_app_nurs/answer_button.dart';
import 'package:quiz_app_nurs/data/questions.dart';

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
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 30),
          AnswerButton(
            onTap: () {},
            answerText: currentQuestion.answers[0],
          ),
          AnswerButton(
            onTap: () {},
            answerText: currentQuestion.answers[1],
          ),
          AnswerButton(
            onTap: () {},
            answerText: currentQuestion.answers[2],
          ),
          AnswerButton(
            onTap: () {},
            answerText: currentQuestion.answers[3],
          ),
        ],
      ),
    );
  }
}
