import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

  void processUserAnswer(bool userAnswer) {
    if (userAnswer == getCurrentQuestionAnswer()) {
      print(++_score);
    } else {
      print(score);
    }
  }

  int get score => _score;

  String getQuestionLevel() {
    return 'Question ${_currentQuestionIndex + 1} of ${_questions.length}';
  }

  bool getCurrentQuestionAnswer() {
    return _questions[_currentQuestionIndex].answer;
  }

  String getCurrentQuestion() {
    return _questions[_currentQuestionIndex].question;
  }

  void proceedQuiz(
      {required bool userAnswer, required VoidCallback onQuizCompleted}) {
    processUserAnswer(userAnswer);
    if (_currentQuestionIndex + 1 == _questions.length) {
      // end of the quiz navigate to result page;
      onQuizCompleted();
    } else {
      ++_currentQuestionIndex;
      notifyListeners();
    }
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
