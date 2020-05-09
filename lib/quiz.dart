import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionindex;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionindex]["question"],
        ),
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(
              () => answerQuestion(answers['score']), answers['text']);
          //bcoz we need to pass score parameter to _ansques(main file) and that cant be done
          //if we simply pass an pointer of taht function ,thats y here we pass a () funct
        }).toList()
      ],
    );
  }
}
