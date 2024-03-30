import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResulScreen extends StatelessWidget {
  final int score;

  ResulScreen({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Opacity(
          opacity: 0.3,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 350.0,
            height: 400.0,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15.0)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Result',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          score.toString(),
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '/10',
                          style: Theme.of(context).textTheme.displaySmall,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Main menu'),
                            style: ElevatedButton.styleFrom(
                              //backgroundColor: Colors.white,
                              backgroundColor:
                                  Theme.of(context).colorScheme.surface,
                              foregroundColor:
                                  Theme.of(context).colorScheme.onSurface,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 5.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Play again'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 5.0),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
