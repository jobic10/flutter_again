import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
          ),
          child: Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SignInButton(
          text: 'Sign in with Google',
          onPressed: () {},
          foreColor: Colors.white,
          backColor: Color(0xFFBB3311),
        ),
        SizedBox(
          height: 8,
        ),
        SignInButton(
          text: 'Sign in with Facebook',
          onPressed: () {},
          foreColor: Colors.white,
          backColor: Color(0xFF334D92),
        ),
        SizedBox(
          height: 8,
        ),
        SignInButton(
          text: 'Sign in with Email',
          onPressed: () {},
          foreColor: Colors.white,
          backColor: Colors.teal,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Or',
          style: TextStyle(fontSize: 14, color: Colors.black87),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 8,
        ),
        SignInButton(
          text: 'Go Anonymous',
          onPressed: () {},
          foreColor: Colors.white,
          backColor: Colors.lime,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
  );
}
