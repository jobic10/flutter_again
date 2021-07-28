import 'package:flutter/material.dart';

class GradientPage extends StatelessWidget {
  const GradientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 220,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.yellow,
                Colors.brown,
                Colors.green,
              ],
              stops: [
                0.2,
                0.3,
                0.4,
                0.5,
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
      ),
    );
  }
}
