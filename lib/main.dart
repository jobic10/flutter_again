import 'package:flutter/material.dart';
import 'package:flutter_again/app/routeGenerator.dart';
import 'package:flutter_again/app/sign_in/sign_in_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Again',
      // home: SafeArea(
      //   child: SignInPage(),
      // ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }
}
