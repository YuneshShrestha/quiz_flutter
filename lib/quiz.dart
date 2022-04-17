import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? question;
  final int? questionNumber;
  final Function pressed;

   const Quiz({Key? key, required this.pressed, required this.questionNumber, required this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question: question![questionNumber!]['question'].toString()),
        // Answer(pressed:pressed),
        // Answer(pressed:pressed),
        // ... is a spread operator for adding item to the list rather than list to list
        // as List<String> tells dart that  question[questionNumber]['answers'] will always return List of String
        ...(question![questionNumber!]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(
              () => pressed(answers['points']), answers['answer'].toString());
        }).toList()
      ],
    );
  }
}
