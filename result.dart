import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  
  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are innocent and awesome ';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(resultPhase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
    );
  }
}
