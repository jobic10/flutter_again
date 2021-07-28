import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_again/route/routeGenerator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app/day2/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return ScreenUtilInit(
      designSize: Size(392.7, 825.5),
      builder: () => MaterialApp(
        title: 'Flutter Again',
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        themeMode: currentTheme.currentTheme,
      ),
    );
  }
}
