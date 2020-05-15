import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';
import './questions_answers_list.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  List<Map<String, Object>> _quizList = QuizList().getQuizList();

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex >= _quizList.length) {
      print("All questions are answered!");
    } else {
      print("There are more questions to answer");
    }
  }

  Widget _doProcessing() {
    if (_questionIndex < _quizList.length) {
      return Quiz(
        questionIndex: _questionIndex,
        questions: _quizList,
        answerQuestion: _answerQuestion,
      );
    } else {
      return Result(_totalScore, _resetQuiz);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _doProcessing(),
      ),
    );
  }
}
