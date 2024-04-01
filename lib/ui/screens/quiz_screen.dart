import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/models/result.dart';
import 'package:quiz_app/providers/quiz_provider.dart';
import 'package:quiz_app/utils/constants.dart';
import 'package:quiz_app/utils/utilities.dart';

class QuizScreen extends StatelessWidget {
  final QuizCategory selectedCategory;

  const QuizScreen({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizProvider(category: selectedCategory),
      child: Consumer<QuizProvider>(builder: (context, quiz, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          appBar: AppBar(
            title: Text(
              enumToString(selectedCategory.category),
              style: const TextStyle(color: kBaseDarkPurple),
            ),
            backgroundColor: Theme.of(context).colorScheme.secondary,
            foregroundColor: Theme.of(context).colorScheme.primary,
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/${quiz.category.imageName}'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: quiz.scoreKeeper,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Row(
                            children: [
                              Text(
                                quiz.getQuestionLevel(),
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          quiz.getCurrentQuestionString(),
                          style: Theme.of(context).textTheme.headlineLarge,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              quiz.proceedQuiz(
                                userAnswer: true,
                                onQuizCompleted: () {
                                  Result result = Result(
                                    score: quiz.score,
                                    totalQuestions: quiz.getNumberOfQuestions(),
                                    category: selectedCategory,
                                  );

                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      '/result', (route) => false,
                                      arguments: result);
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green.shade400,
                              foregroundColor: Colors.white,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 5.0),
                            ),
                            child: const Text('True'),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              quiz.proceedQuiz(
                                userAnswer: false,
                                onQuizCompleted: () {
                                  Result result = Result(
                                    score: quiz.score,
                                    totalQuestions: quiz.getNumberOfQuestions(),
                                    category: selectedCategory,
                                  );

                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      '/result', (route) => false,
                                      arguments: result);
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade400,
                              foregroundColor: Colors.white,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 5.0),
                            ),
                            child: const Text('False'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
