import 'package:flutter/foundation.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/models/question.dart';

class QuizProvider with ChangeNotifier {
  final QuizCategory category;
  int _currentQuestionIndex = 0;

  QuizProvider({required this.category});
}
