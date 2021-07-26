import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  PaddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Stack Assignment")),
      body: Column(
        children: [
          _buildBox(
            text: 'First',
            color: Colors.green,
            shadowColor: Colors.green.shade100,
          ),
          _buildBox(
            text: 'Second',
            color: Colors.red,
            shadowColor: Colors.green.shade100,
          ),
        ],
      ),
    );
  }
}

Widget _buildBox({
  required String text,
  required Color color,
  required Color shadowColor,
}) {
  return Container(
    color: color.withAlpha(90),
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: Container(
      width: double.infinity,
      color: color,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
        ),
      ),
    ),
  );
}
