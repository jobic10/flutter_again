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
      body: Container(color: Colors.blue.shade200, child: Text(data)),
    );
  }
}
