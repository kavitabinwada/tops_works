import 'package:flutter/material.dart';

class Question {
  int QuestionNo;
  String QuestionName;
  Widget queationClass;

  Question(
      {required this.queationClass,
      required this.QuestionNo,
      required this.QuestionName});
}
