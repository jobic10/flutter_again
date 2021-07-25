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
          backColor: Colors.white,
          foreColor: Colors.black87,
        ),
        SizedBox(
          height: 8,
        ),
        SignInButton(
          text: 'Sign in with Facebook',
          onPressed: () {},
          backColor: Colors.white,
          foreColor: Color(0xFF334D92),
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
    ),
  );
}
