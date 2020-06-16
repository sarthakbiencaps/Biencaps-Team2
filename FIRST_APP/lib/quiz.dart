import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.question,
    @required this.answerQuestion,
    @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Question(
            question[questionIndex]['questionText'],
          ),
          ...(question[questionIndex]['answers'] as List<Map<String, Object>>).map((ans) {
            return Answer(() =>answerQuestion(ans['score']), ans['text']);
          }).toList()
        ],
      );
  }
}