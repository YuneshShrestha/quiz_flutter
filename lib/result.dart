import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? totalPoints;
  final VoidCallback? restart;
  const Result({this.totalPoints, this.restart, Key? key}) : super(key: key);
  String get getResultText {
    if (totalPoints! < 0) {
      return 'Try Next Time';
    } else {
      return 'Eureka!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            getResultText,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("Your score is $totalPoints"),
          FlatButton(
              onPressed:restart,
              child: const Text("Restart Game",
                  style: TextStyle(
                    color: Colors.blue,
                  )))
        ],
      ),
    );
  }
}
