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
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            gradient: RadialGradient(
              colors: [
                Colors.red,
                Colors.yellow,
                Colors.brown,
                Colors.green.withOpacity(0.2),
              ],
              stops: [
                0.6,
                0.8,
                0.81,
                0.8,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
