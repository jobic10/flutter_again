import 'package:flutter/material.dart';

class LayoutBuilderExercise extends StatelessWidget {
  const LayoutBuilderExercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exercise'),
        ),
        body: Padding(
          padding: EdgeInsets.all(5),
          child: GridView.count(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            children: List.generate(
              30,
              (index) => Container(
                color: Colors.red.withAlpha(50 * index % 255),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '$index',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
