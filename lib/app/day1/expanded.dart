import 'package:flutter/material.dart';
import 'package:flutter_again/route/routeConstant.dart';

class ExpandPage extends StatelessWidget {
  const ExpandPage({required this.data, Key? key}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop('Data from Expanded');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Working With Expanded'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
