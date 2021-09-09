import 'package:flutter/material.dart';
import 'package:flutter_again/day5/generators.dart';
import '../app/day1/expanded.dart';
import '../app/day1/stack_and_positioned.dart';
import '../app/day1/expanded2.dart';
import '../app/day1/stack_assignment.dart';
import '../app/sign_in/sign_in_page.dart';
import '../app/day1/padding.dart';
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
      case Routes.stackPage2:
        return MaterialPageRoute(builder: (_) => StackAssignment());
      case Routes.paddingPage:
        return MaterialPageRoute(builder: (_) => PaddingPage());
      case Routes.genPage:
        return MaterialPageRoute(builder: (_) => GenApp());
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
