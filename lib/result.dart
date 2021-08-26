import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore < 8) {
      resultText = "you are idiot!";
    } else if (resultScore < 23) {
      resultText = "you are awesome!";
    }
    print(resultScore);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        TextButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(primary: Colors.orange))
      ],
    ));
  }
}
