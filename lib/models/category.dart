import 'question.dart';

enum CategoryEnum {
  Sports,
  Economics,
  Architecture,
  Astronomy,
  Chemistry,
}

class QuizCategory {
  String imageName;
  CategoryEnum category;
  List<Question> questions = [];

  QuizCategory({required this.imageName, required this.category});
}
