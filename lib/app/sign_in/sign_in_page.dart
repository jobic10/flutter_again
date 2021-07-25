import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Time Tracker'),
          centerTitle: true,
          elevation: 2,
        ),
        body: Container(color: Colors.yellow));
  }
}
