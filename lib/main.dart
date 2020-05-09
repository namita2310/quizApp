import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "question": ' What is the longest that an elephant has lived? (That we know of)',
      "answers": [
        {"text": "86 years", "score": 10},
        {"text": "17 years", "score": 0},
        {"text": "142 years", "score": 0},
        {"text": "40 years", "score": 0}
      ],
    },
    {
      "question": 'How many rings are on the Olympic flag?',
      "answers": [
        {"text": "6", "score": 0},
        {"text": "7", "score": 0},
        {"text": "5", "score": 10},
        {"text": "4", "score": 0}
      ],
    },
    {
      "question": ' What is a tarsier?',
      "answers": [
        {"text": "A primate", "score": 10},
        {"text": "A Rodent", "score": 0},
        {"text": "A Lizard", "score": 0},
        {"text": "A Bird", "score": 0}
      ],
    },
    {
      "question": 'How did Spider-Man get his powers?',
      "answers": [
        {"text": "Born with them", "score": 0},
        {"text": "Bitten by a radioactive spider ", "score": 10},
        {"text": "Woke up with them after a strange dream", "score": 0},
      ],
    },
    {
      "question": 'Which of these animals does NOT appear in the Chinese zodiac?',
      "answers": [
        {"text": "Rabbit", "score": 0},
        {"text": "Dragon", "score": 0},
        {"text": "Dog", "score": 0},
        {"text": "Bear", "score": 10}
      ],
    },
    {
      "question": 'What is the name of this symbol: ¶',
      "answers": [
        {"text": "Fermata", "score": 0},
        {"text": "Pilcrow", "score": 10},
        {"text": "Interrobang", "score": 0},
        {"text": "Biltong", "score": 0}
      ],
    },
    {
      "question": 'Are giant pandas a type of bear?',
      "answers": [
        {"text": "Yes", "score": 10},
        {"text": "No", "score": 0},
        
      ],
    },
    {
      "question": 'How many points is the letter X worth in English-language Scrabble?',
      "answers": [
        {"text": "None", "score": 0},
        {"text": "8", "score": 10},
        {"text": "10", "score": 0},
        {"text": "11", "score": 0}
      ],
    },
    {
      "question": 'In the nursery rhyme, how many blackbirds were baked in a pie?',
      "answers": [
        {"text": "4", "score": 0},
        {"text": "11", "score": 0},
        {"text": "24", "score": 10},
        {"text": "47", "score": 0}
      ],
    },
    {
      "question": 'What is a Pomelo?',
      "answers": [
        {"text": "An old-fashioned punching bag", "score": 0},
        {"text": "A breed of dog", "score": 0},
        {"text": "The largest citrus fruit ", "score": 10},
        {"text": "Something that cheerleaders hold", "score": 0}
      ],
    },
  ];
  var _ind = 0;
  var _totscore=0;
  void _resetquiz(){
    setState(() {
       _ind=0;
    _totscore=0;
    });
   
  }
  void _ansques(int tot) {
    setState(() {
      _ind = _ind + 1;
      _totscore+=tot;
    });
    if (_ind < _questions.length) {
      print("we have more questions");
      print(_ind);
    }
  }

  @override
  Widget build(BuildContext context) {
    //var index=0;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizzz",
          style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: _ind < _questions.length
            ? Quiz(
                answerQuestion: _ansques,
                questionindex: _ind,
                questions: _questions,
              )
            : Result(_totscore,_resetquiz),
      ),
    );
  }
}
