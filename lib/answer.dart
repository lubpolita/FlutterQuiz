import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() answer;

  Answer(this.text, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: EdgeInsets.all(10),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: answer,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
    );
  }
}
