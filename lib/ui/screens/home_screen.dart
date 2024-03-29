import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/data/categories_data.dart';
import 'dart:math';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZZ'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                SvgPicture.asset(
                  'assets/studying-lady.svg',
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.bottomRight,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Challenge yourself',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                            ),
                            Container(
                              width: 200.0,
                              child: Text(
                                'Use quick start button or pick a category',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 5.0,
                                ),
                                minimumSize: Size.zero,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/quiz',
                                    arguments: categories[Random().nextInt(5)]);
                              },
                              child: Text(
                                'Quick start',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(55.0))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'Explore Quizzes',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text('VIEW ALL'),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Expanded(
                      child: GridView.count(
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0,
                        childAspectRatio: 4 / 3,
                        crossAxisCount: 2,
                        children: categories.map((category) {
                          return Card(
                            margin: EdgeInsets.zero,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/quiz',
                                    arguments: category);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/${category.imageName}'), // Your asset image
                                            fit: BoxFit
                                                .cover, // This makes the image cover the container
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          category.category
                                              .toString()
                                              .split('.')
                                              .last,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
