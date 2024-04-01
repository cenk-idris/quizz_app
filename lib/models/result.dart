import 'package:quiz_app/models/category.dart';

class Result {
  final int score;
  final int totalQuestions;
  final QuizCategory category;

  Result({
    required this.score,
    required this.totalQuestions,
    required this.category,
  });
}
