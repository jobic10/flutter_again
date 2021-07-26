import 'package:flutter/material.dart';
import '../app/day1/expanded.dart';
import '../app/day1/stack_and_positioned.dart';
import '../app/day1/expanded2.dart';
import '../app/sign_in/sign_in_page.dart';
import 'routeConstant.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => SignInPage());
      case Routes.expandedPage:
        if (args is String)
          return MaterialPageRoute(builder: (_) => ExpandPage(data: args));
        return MaterialPageRoute(builder: (_) => ErrorRoute());
      case Routes.stackPage:
        return MaterialPageRoute(builder: (_) => StackAndPosition());
      case Routes.expandedPage2:
        return MaterialPageRoute(builder: (_) => ExpandedAssignment());
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
