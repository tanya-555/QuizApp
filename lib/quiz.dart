import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  int _getScore(bool val) {
    if (val) {
      return 10;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(_getScore(answer['isCorrect'])),
              answer['text']);
        }).toList()
      ],
    );
  }
}
