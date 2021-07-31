import 'package:flutter/material.dart';
import 'package:flutter_again/app/day2/theme.dart';
import 'package:flutter_again/app/sign_in/sign_in_button.dart';
import 'package:flutter_again/day4/clip.dart';
import 'package:flutter_again/route/routeConstant.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dear Mother',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        centerTitle: true,
        elevation: 2,
        actions: [
          IconButton(
            onPressed: () {
              currentTheme.toggleTheme();
            },
            icon: Icon(Icons.brightness_4_rounded),
          ),
        ],
      ),
      body: _buildContent(context),
    );
  }
}

Widget _buildContent(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(
      16.0,
    ),
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 48,
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
            imagePath: 'asset/images/gmail.png',
            onPressed: () {},
            backColor: Colors.white,
            foreColor: Color(0xFFBB3311),
          ),
          SizedBox(
            height: 8,
          ),
          SignInButton(
            text: 'Sign in with Facebook',
            imagePath: 'asset/images/facebook.png',
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MyClip()));
            },
            foreColor: Colors.white,
            backColor: Color(0xFF304D90),
          ),
          SizedBox(
            height: 8,
          ),
          SignInButton(
            text: 'Sign in with Email',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.stackPage);
            },
            foreColor: Colors.white,
            backColor: Colors.teal.shade400,
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
            onPressed: () async {
              var result = await Navigator.of(context)
                  .pushNamed(Routes.expandedPage2, arguments: 'I am coming!');
              if (result is String) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      result,
                    ),
                  ),
                );
              }
            },
            foreColor: Colors.white,
            backColor: Colors.lime.shade400,
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ),
  );
}
