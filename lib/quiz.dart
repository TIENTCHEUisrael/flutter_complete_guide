import 'package:flutter/material.dart';
import '/question.dart';
import '/answer.dart';

class Quiz extends StatelessWidget{
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answer_question;

  Quiz(
        {
          required this.questions,
          required this.answer_question,
          required this.questionIndex
        }
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String,Object>>).map((answer){
          return Answer(()=>answer_question(answer['Score']),answer['Text'] as String);
        }).toList()
      ],
    );
  }

}