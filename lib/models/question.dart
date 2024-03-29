import 'package:quiz_app/models/category.dart';

class Question {
  CategoryEnum category;
  String question;
  bool answer;

  Question(
      {required this.category, required this.question, required this.answer});
}
