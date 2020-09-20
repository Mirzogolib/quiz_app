import 'package:flutter/material.dart';
import 'package:hello_vs/quiz.dart';
import 'package:hello_vs/result.dart';
import './question.dart';
import './answer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'question': 'What is your favourite food?',
      'answers': [
        {'text': 'Fish', 'score': 5},
        {'text': 'Palov', 'score': 1},
        {'text': 'Salat', 'score': 4},
        {'text': 'I do not eat food', 'score': 10}
      ]
    },
    {
      'question': 'What is your favourite color?',
      'answers': [
        {'text': 'Blue', 'score': 5},
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'question': 'What is your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 2},
        {'text': 'Cat', 'score': 3},
        {'text': 'Python', 'score': 10},
        {'text': 'Elephant', 'score': 7}
      ]
    },
  ];
  void _onResetClicked() {
    setState(() {
      _questionIndex = 0;
       _totalScore = 0;
    });
  }

  void _onButtonClicked(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // const is pre defined unchanged value at compile time
    // final is not changed after setting value at run time

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.green,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _onButtonClicked)
            : Result(_totalScore, _onResetClicked),
      ),
    );
  }
}
