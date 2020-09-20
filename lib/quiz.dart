import 'package:flutter/material.dart';
import 'package:hello_vs/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int _questionIndex;
  final Function onButtonClicked;
  Quiz(this.questions, this._questionIndex, this.onButtonClicked);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[_questionIndex]['question'],
        ),
        ...(questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(()=> onButtonClicked(answers['score']), answers['text']);
        }).toList()
      ],
    );
  }
}
