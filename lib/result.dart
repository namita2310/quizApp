import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function handler;

  Result(this.resultscore, this.handler);
  String get resultphrase {
    String restext="You scored ${resultscore}/100\n  ";
    return restext;
  }
  String get resultans{
    String resans="\n1. What is the longest that an elephant has lived? 86 years\n2.How many rings are on the Olympic flag? 5\n3. What is a tarsier? A primate\n4.How did Spider-Man get his powers? Bitten by a radioactive spider\n5.Which of these animals does NOT appear in the Chinese zodiac? Bear\n6.What is the name of this symbol: ¶ Pilcrow\n7.Are giant pandas a type of bear? Yes\n8.How many points is the letter X worth in English-language Scrabble? 8\n9.In the nursery rhyme, how many blackbirds were baked in a pie? 24\n10.What is a Pomelo? The largest citrus fruit\n";
    return resans;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultphrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        Text("Answers",
        style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
        Text(
          resultans,
          style:TextStyle(fontSize:15,fontWeight: FontWeight.w600, ),
        ),
        
        RaisedButton(
          child: Text("Restart Quiz",style:TextStyle(fontSize: 20),),
          textColor: Colors.green,
          
          onPressed: handler,
        )
      ]),
    );
  }
}
