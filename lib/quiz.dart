import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? question;
  final int? questionNumber;
  final VoidCallback? pressed;

  const Quiz({Key? key, this.pressed, this.questionNumber, this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question: question![questionNumber!]['question'].toString()),
        // Answer(pressed:pressed),
        // Answer(pressed:pressed),
        // ... is a spread operator for adding item to the list rather than list to list
        // as List<String> tells dart that  question[questionNumber]['answers'] will always return List of String
        ...(question![questionNumber!]['answers'] as List<String>).map((answer) {
          return Answer(pressed!, answer);
        }).toList()
      ],
    );
  }
}
