import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _resetHandler;

  Result(this._resultScore, this._resetHandler);

  String get getResult {
    String resultText;
    if (this._resultScore > 40) {
      resultText = "Excellent!";
    } else if (this._resultScore > 30) {
      resultText = "Awesome!";
    } else if (this._resultScore > 20) {
      resultText = "Good!";
    } else {
      resultText = "Can do better!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          Text(
            getResult,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 39, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: _resetHandler,
          ),
        ],
      ),
    );
  }
}
