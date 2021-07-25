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
      body: _buildContent(),
    );
  }
}

Widget _buildContent() {
  return Container(
    color: Colors.yellow,
    padding: EdgeInsets.all(
      16.0,
    ),
    child: Column(
      children: <Widget>[
        Container(
          color: Colors.green,
          child: SizedBox(
            width: 100,
            height: 100,
          ),
        ),
        Container(
          color: Colors.orange,
          child: SizedBox(
            width: 100,
            height: 100,
          ),
        ),
        Container(
          color: Colors.blue,
          child: SizedBox(
            width: 100,
            height: 100,
          ),
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.stretch,
    ),
  );
}
