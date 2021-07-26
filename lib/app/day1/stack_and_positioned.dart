import 'package:flutter/material.dart';

class StackAndPosition extends StatelessWidget {
  const StackAndPosition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack and Position Widget'),
        ),
        body: Container(
            color: Colors.tealAccent,
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 400,
                  height: 400,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            )));
  }
}
