import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
//Importation du fichier de question
import '/quiz.dart';

void main(){
  print('Application is starting');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  final _questions=const [
    {
      'questionText':'What\'s is your favourite color?',
      'answer':[
        {'Text':'Blue','Score':2},
        {'Text':'Red','Score':5},
        {'Text':'white','Score':1},
        {'Text':'Black','Score':10}
      ],
    },
    {
      'questionText':'What\'s is your favourite animals?',
      'answer':[
        {'Text':'Lion','Score':1},
        {'Text':'Elephant','Score':3},
        {'Text':'Tiger','Score':2},
        {'Text':'Eagle','Score':2}
      ],
    },
    {
      'questionText': 'What\'s is your favourite foods?',
      'answer':[
        {'Text':'O\'kok','Score':1},
        {'Text':'Ndolle','Score':2},
        {'Text':'DG','Score':1},
        {'Text':'Eru','Score':2}
      ],
    },
    {
      'questionText':'What\'s is your favourite country?',
      'answer':[
        {'Text':'Cameroon','Score':5},
        {'Text':'Benin','Score':4},
        {'Text':'Congo','Score':7},
        {'Text':'France','Score':3}
      ],
    },
    {
      'questionText':'What\'s is your favourite fruits?',
      'answer':[
        {'Text':'Banana','Score':2},
        {'Text':'Mangoes','Score':1},
        {'Text':'Pineapplee','Score':3},
        {'Text':'Orange','Score':4}
      ],
    }
  ];
  var _questionIndex=0;
  var _totalScore=0;

  void _answer_question(int score){
    _totalScore=_totalScore+score;
    setState(
        (){
          _questionIndex=_questionIndex+1;
        }
    );
    print(_questionIndex);
    if(_questionIndex<_questions.length){
      print('We have more question');
    }
    else{
      print('No more question !!');
    }
  }

  void resetQuiz(){
    setState(
      (){
        _totalScore=0;
        _questionIndex=0;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text(
              'First app run'
          ),
        ),
        body: _questionIndex<_questions.length
          ?Quiz(
          questions: _questions,
          answer_question:_answer_question,
          questionIndex: _questionIndex,
        )
          : Result(_totalScore,resetQuiz),
      ),
    );
  }
}