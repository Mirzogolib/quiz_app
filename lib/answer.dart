import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function functionHandler;
  final String buttonText;
  Answer(this.functionHandler, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green,
        textColor: Colors.white,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: functionHandler,
      ),
    );
  }
}
