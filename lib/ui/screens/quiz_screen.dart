import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/data/categories_data.dart';
import 'package:quiz_app/models/category.dart';
import 'package:quiz_app/providers/quiz_provider.dart';
import 'package:quiz_app/utils/constants.dart';

class QuizScreen extends StatelessWidget {
  final QuizCategory selectedCategory;

  QuizScreen({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizProvider(category: selectedCategory),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            selectedCategory.category.toString(),
            style: TextStyle(color: kBaseDarkPurple),
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          foregroundColor: Theme.of(context).colorScheme.primary,
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image:
                            AssetImage('assets/${selectedCategory.imageName}'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Text(
                  selectedCategory.category.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
