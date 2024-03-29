import 'question.dart';

class Category {
  String imageName;
  String categoryName;
  List<Question> questions = [];

  Category({required this.imageName, required this.categoryName});
}
