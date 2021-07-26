import 'package:flutter/material.dart';

class StackAssignment extends StatelessWidget {
  StackAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Stack Assignment")),
      body: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width,
            color: Colors.grey,
          ),
          Positioned(
            top: 0,
            child: _buildBox(
              height: size.width * 0.4,
              width: size.width * 0.7,
              color: Colors.red,
              number: 1,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: _buildBox(
              height: size.width * 0.3,
              width: size.width * 0.75,
              color: Colors.blue,
              number: 3,
            ),
          ),
          Positioned(
            right: 0,
            child: _buildBox(
              height: size.width * 0.75,
              width: size.width * 0.3,
              color: Colors.yellow.shade700,
              number: 2,
            ),
          ),
          Positioned(
            right: size.width * 0.3,
            top: size.width * 0.4,
            child: _buildBox(
              height: size.width * 0.35,
              width: size.width * 0.35,
              color: Colors.purple,
              number: 5,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: _buildBox(
              height: size.width * 0.65,
              width: size.width * 0.35,
              color: Colors.green,
              number: 4,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBox(
    {required double height,
    required double width,
    required int number,
    required Color color}) {
  return Container(
    width: width,
    height: height,
    color: color,
    child: Center(
      child: Text(
        '$number',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
        ),
      ),
    ),
  );
}
