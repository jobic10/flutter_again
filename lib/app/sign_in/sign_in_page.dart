import 'package:flutter/material.dart';
import 'package:flutter_again/app/sign_in/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Colors.grey[200],
      body: _buildContent(),
    );
  }
}

Widget _buildContent() {
  return Padding(
    padding: EdgeInsets.all(
      16.0,
    ),
    child: Column(
      children: <Widget>[
        Text(
          'Sign In',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
        SignInButton(
          text: 'Sign',
          onPressed: () {},
          backColor: Colors.white,
          foreColor: Colors.black87,
        ),
        SizedBox(
          height: 8,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
  );
}
