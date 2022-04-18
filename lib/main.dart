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
      debugShowCheckedModeBanner: false,
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
  var _totalpoints = 0;
  static const _question = [
    {
      'question': 'Who is Monalisa?',
      'answers': [
        {
          'answer': 'Painting',
          'points': 10,
        },
        {
          'answer': 'Queen',
          'points': 0,
        },
        {
          'answer': 'Dancer',
          'points': 0,
        },
        {
          'answer': 'Singer',
          'points': 0,
        },
      ]
    },
    {
      'question': 'Air plane is also called?',
      'answers': [
        {
          'answer': 'Bus',
          'points': 0,
        },
        {
          'answer': 'Aeroplane',
          'points': 10,
        },
        {
          'answer': 'Train',
          'points': 0,
        },
        {
          'answer': 'Spaceship',
          'points': 0,
        },
      ]
    }
  ];
  void _pressed(int points) {
    _totalpoints += points;
    setState(() {
      _questionNumber += 1;

      // print('Hello ${_questionNumber.toString()}');
    });
  }

  void _restart() {
    setState(() {
      _totalpoints = 0;
      _questionNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          centerTitle: true,
        ),
        body: _questionNumber < _question.length
            ? Quiz(
                questionNumber: _questionNumber,
                pressed: _pressed,
                question: _question)
            : Result(
                totalPoints: _totalpoints,
                restart: _restart,
              ));
  }
}
