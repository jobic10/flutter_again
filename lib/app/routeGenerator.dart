import 'package:flutter/material.dart';
import 'day1/expanded.dart';
import 'sign_in/sign_in_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SignInPage());
      case '/second':
        return MaterialPageRoute(builder: (_) => ExpandPage());
      default:
        return MaterialPageRoute(builder: (_) => ErrorRoute());
    }
  }
}

class ErrorRoute extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error in Navigation'),
      ),
      body: Text('No Route'),
    );
  }
}
