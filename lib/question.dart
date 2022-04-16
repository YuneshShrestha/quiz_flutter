import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String? question;
  Question({Key? key, this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: Text(
        '$question',
        style: const TextStyle(fontSize: 18.0),
      ),
    );
  }
}
