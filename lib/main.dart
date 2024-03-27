import 'package:flutter/material.dart';
import 'utils/constants.dart';
import 'ui/screens/home_screen.dart';

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
      routes: {'/': (context) => HomeScreen()},
      theme: ThemeData(
        // Generate a color scheme from a seed color
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: kBaseDarkPurple,
          onPrimary: kBaseSecondary,
          secondary: kBaseSecondary,
          onSecondary: kBaseDarkPurple,
          error: Colors.red,
          onError: Colors.white,
          background: kBaseDarkPurple,
          onBackground: kBaseDarkPurple,
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
            displayMedium: TextStyle(fontFamily: 'Frijole', fontSize: 22.0)),
      ),
    );
  }
}
