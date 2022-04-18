import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  String ans;
  Answer(this.selectHandler, this.ans, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          // Here primary means background color and secodary means foreground color
          style: ElevatedButton.styleFrom(
              primary: Colors.blue, onPrimary: Colors.white),
          child: Text(
            ans,
            // style: TextStyle(color: Colors.white),
          ),
          onPressed: selectHandler,
          // color: Colors.blue,
        ));
  }
}
