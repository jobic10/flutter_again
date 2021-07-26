import 'package:flutter/material.dart';

class ExpandPage extends StatelessWidget {
  const ExpandPage({required this.data, Key? key}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Working With Expanded'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
              height: 200,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              height: 200,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
