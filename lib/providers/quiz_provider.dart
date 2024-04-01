import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/models/question.dart';

class QuizProvider with ChangeNotifier {
  final QuizCategory category;
  int _currentQuestionIndex = 0;
  // ignore: prefer_final_fields
  int _score = 0;
  List<Question> _questions = [];
  final List<Icon> _scoreKeeper = [];

  QuizProvider({required this.category}) {
    initializeQuestions();
    initializeScoreKeeper();
  }

  List<Icon> get scoreKeeper => _scoreKeeper;

  void initializeScoreKeeper() {
    for (int i = 0; i < getNumberOfQuestions(); i++) {
      _scoreKeeper.add(
        Icon(
          Icons.circle_rounded,
          color: _questions[_currentQuestionIndex].color,
        ),
      );
    }
  }

  set questionColor(bool isAnswerCorrect) => isAnswerCorrect
      ? _scoreKeeper[_currentQuestionIndex] = const Icon(
          Icons.circle_rounded,
          color: Colors.green,
        )
      : _scoreKeeper[_currentQuestionIndex] = const Icon(
          Icons.circle_rounded,
          color: Colors.red,
        );

  int getNumberOfQuestions() {
    return _questions.length;
  }

  void processUserAnswer(bool userAnswer) {
    if (userAnswer == getCurrentQuestionAnswer()) {
      questionColor = true;
    } else {
      questionColor = false;
    }
  }

  int get score => _score;

  String getQuestionLevel() {
    return 'Question ${_currentQuestionIndex + 1} of ${_questions.length}';
  }

  bool getCurrentQuestionAnswer() {
    return _questions[_currentQuestionIndex].answer;
  }

  String getCurrentQuestionString() {
    return _questions[_currentQuestionIndex].question;
  }

  Future<void> proceedQuiz(
      {required bool userAnswer, required VoidCallback onQuizCompleted}) async {
    processUserAnswer(userAnswer);
    if (_currentQuestionIndex + 1 == _questions.length) {
      // end of the quiz navigate to result page;
      notifyListeners();
      await Future.delayed(const Duration(milliseconds: 500));
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
