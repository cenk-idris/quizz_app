import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZZ'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the second screen when tapped.
            },
            child: const Text('Launch screen'),
          ),
        ),
      ),
    );
  }
}
