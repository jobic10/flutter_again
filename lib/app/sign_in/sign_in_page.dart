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
      body: Container(
        color: Colors.yellow,
        child: Column(children: <Widget>[
          Container(
            color: Colors.orange,
            child: SizedBox(
              width: 100,
              height: 100,
            ),
          ),
        ]),
      ),
    );
  }
}
