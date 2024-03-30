import 'package:flutter/material.dart';
import 'package:quiz_app/data/categories_data.dart';
import 'package:quiz_app/models/category.dart';
import 'utils/constants.dart';
import 'ui/screens/home_screen.dart';
import 'ui/screens/quiz_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/quiz': (context) {
          // Retrieve the passed argument
          final selectedCategory =
              ModalRoute.of(context)!.settings.arguments as QuizCategory;

          return QuizScreen(
            selectedCategory: selectedCategory,
          );
        },
      },
      theme: ThemeData(
        // Generate a color scheme from a seed color
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: kBaseDarkPurple,
          onPrimary: kBaseSecondary,
          secondary: kBaseSecondary,
          onSecondary: kDefaultCardColor,
          error: Colors.red,
          onError: Colors.white,
          background: kBaseDarkPurple,
          onBackground: kBaseSecondary,
          surface: kDefaultCardColor,
          onSurface: kBaseDarkPurple,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: kBaseDarkPurple,
          foregroundColor: kBaseSecondary,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            fontFamily: 'Frijole',
            fontSize: 22.0,
          ),
        ),
        textTheme: const TextTheme(
          displayMedium: TextStyle(fontFamily: 'Frijole', fontSize: 22.0),
          headlineLarge: TextStyle(
              fontFamily: 'Quicksand',
              fontVariations: [FontVariation('wght', 700.0)],
              fontSize: 25.0),
          headlineMedium: TextStyle(
              fontFamily: 'Quicksand',
              fontVariations: [FontVariation('wght', 700.0)],
              fontSize: 22.0),
          bodySmall: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 13.0,
            fontVariations: [FontVariation('wght', 400.0)],
          ),
          labelLarge: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 20.0,
            fontVariations: [FontVariation('wght', 700.0)],
          ),
          labelMedium: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 14.0,
            fontVariations: [FontVariation('wght', 700.0)],
          ),
          labelSmall: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 14.0,
            fontVariations: [FontVariation('wght', 400.0)],
          ),
        ),
      ),
    );
  }
}
