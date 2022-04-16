import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

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
  var questionNumber = 0;
  List<Map<String, Object>> question = [
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
      questionNumber += 1;
      // print('Hello ${_questionNumber.toString()}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Question"),
        ),
        body: questionNumber < question.length
            ? Column(
                children: [
                  Question(
                      question:
                          question[questionNumber]['question'].toString()),
                  // Answer(pressed:pressed),
                  // Answer(pressed:pressed),
                  // ... is a spread operator for adding item to the list rather than list to list
                  // as List<String> tells dart that  question[questionNumber]['answers'] will always return List of String
                  ...(question[questionNumber]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(pressed, answer);
                  }).toList()
                ],
              )
            : const Center(
                child: Text("Eureka"),
              ));
  }
}
