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
                    color: Colors.white,
                  ),
                ),
                // SizedBox(
                //   width: 300,
                //   height: 300,
                //   child: Container(
                //     color: Colors.green,
                //   ),
                // ),
                // SizedBox(
                //   width: 150,
                //   height: 150,
                //   child: Container(
                //     color: Colors.blue,
                //   ),
                // ),
                Positioned(
                  child: Container(color: Colors.purple),
                  height: 150,
                  width: 150,
                  left: 30,
                  top: 30,
                ),
                Positioned(
                  child: Container(color: Colors.green),
                  height: 150,
                  width: 150,
                  right: 40,
                  top: 50,
                ),
                Positioned(
                  child: Container(color: Colors.blue),
                  height: 150,
                  width: 150,
                  left: 50,
                  bottom: 80,
                ),
                Positioned(
                  child: Container(color: Color(0xFFFF0000)),
                  height: 150,
                  width: 150,
                  right: 30,
                  bottom: 60,
                ),
              ],
            )));
  }
}
