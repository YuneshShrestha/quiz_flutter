import 'package:flutter/material.dart';

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
  @override
  var _questionNumber = 0;
  final List<String> _question = ['Who are you?', 'What\'s your name'];
  void _pressed() {
    setState(() {
      _questionNumber += 1;
      // print('Hello ${_questionNumber.toString()}');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question"),
      ),
      body: Column(
        children: [
          Text(_question[_questionNumber].toString()),
          RaisedButton(child: Text('Press'), onPressed: _pressed)
        ],
      ),
    );
  }
}
