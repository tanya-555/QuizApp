import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;
  final String _answerText;

  Answer(this._selectHandler, this._answerText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(_answerText),
          onPressed: _selectHandler,
        ));
  }
}
