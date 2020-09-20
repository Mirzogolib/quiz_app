import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _onResetClicked;


  Result(this._totalScore, this._onResetClicked);
  String get userResult {
    String resultText = 'You did it';
    if (_totalScore <= 6) {
      resultText = 'You are pure and innocent!';
    } else if (_totalScore <= 12) {
      resultText = 'It is ok!';
    } else {
      resultText = 'You need to go to Doctor!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          userResult,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text(
            'Start the new quiz',
            style: TextStyle(fontSize: 14, color: Colors.blueAccent),
          ),
          onPressed: _onResetClicked,
        )
      ],
    ));
  }
}
