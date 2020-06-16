
import 'package:FIRST_APP/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var question = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score':10}, 
        {'text':'Red','score':5}, 
        {'text':'Green','score':3}, 
        {'text':'White','score':1}],
    },
    {
      'questionText': 'What\s your favorite animal ?',
      'answers': [
        {'text':'Rabbit','score':3},
        {'text':'Lion','score':11} ,
        {'text': 'Elephant', 'score':5} ]
    },
    {
      'questionText': 'What\s your favorite instructor ?',
      'answers': [
        {'text':'Richard Finman','score':'5'},
        {'text':'Einstine', 'score': '5'},
       ]
    }
  ];
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: questionIndex < question.length ? 
        Quiz(
          answerQuestion: answerQuestion, 
          questionIndex: questionIndex, 
          question: question,)
      : Result(totalScore,resetQuiz),
    ));
  }
}
