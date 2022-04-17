import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Describes the part of the user interface represented by this widget.
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _questionNumber = 0;
  static const _question = [
    {
      'question': 'Who is Monalisa?',
      'answers': ['Painting', 'Queen', 'Dancer', 'Singer']
    },
    {
      'question': 'Air plane is also called?',
      'answers': ['Aeroplane', 'Space Ship', 'Bus', 'Car']
    }
  ];
  void pressed() {
    setState(() {
      _questionNumber += 1;
      // print('Hello ${_questionNumber.toString()}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Question"),
        ),
        body: _questionNumber < _question.length
            ? Quiz(questionNumber: _questionNumber, pressed: pressed, question: _question )
            : const Result());
  }
}
