import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String anstext;
  Answer(this.handler,this.anstext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(anstext),
        onPressed: handler,
      ),
    );
  }
}
