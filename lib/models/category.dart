import 'question.dart';

enum CategoryEnum {
  sports,
  economics,
  architecture,
  astronomy,
  chemistry,
}

class QuizCategory {
  String imageName;
  CategoryEnum category;
  List<Question> questions = [];

  QuizCategory({required this.imageName, required this.category});
}
