import 'package:quiz_app/models/category.dart';
import 'package:flutter/material.dart';

class Question {
  CategoryEnum category;
  String question;
  bool answer;
  Color color = Colors.grey;

  Question(
      {required this.category, required this.question, required this.answer});
}
