import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String? question;
  Question({Key? key, this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('$question');
  }
}
