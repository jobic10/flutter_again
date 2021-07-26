import 'package:flutter/material.dart';

class ExpandPage extends StatelessWidget {
  const ExpandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Working With Expanded'),
      ),
      body: Container(
        color: Colors.blue.shade200,
      ),
    );
  }
}
