import 'package:flutter/material.dart';

class GradientPage extends StatelessWidget {
  const GradientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gradient'),
        ),
        body: Container(
          height: 100,
          width: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.red,
            Colors.yellow,
          ])),
        ));
  }
}
