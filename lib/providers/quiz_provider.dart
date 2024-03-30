import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/models/question.dart';

class QuizProvider with ChangeNotifier {
  final QuizCategory category;
  int _currentQuestionIndex = 0;
  int _score = 0;
  List<Question> _questions = [];

  QuizProvider({required this.category}) {
    initializeQuestions();
  }

  String getQuestionLevel() {
    return 'Question ${_currentQuestionIndex + 1} of ${_questions.length}';
  }

  String getCurrentQuestion() {
    return _questions[_currentQuestionIndex].question;
  }

  void nextQuestion() {
    _currentQuestionIndex < _questions.length - 1
        ? ++_currentQuestionIndex
        : _currentQuestionIndex;
    notifyListeners();
  }

  initializeQuestions() {
    _questions = (allQuestions
            .where((question) => question.category == category.category)
            .toList()
          ..shuffle())
        .take(10)
        .toList();
  }
}
