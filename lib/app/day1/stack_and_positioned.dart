import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackAndPosition extends StatelessWidget {
  const StackAndPosition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('My Size : -> ${MediaQuery.of(context).size}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack and Position Widget'),
      ),
      body: Container(
        color: Colors.tealAccent,
        height: (MediaQuery.of(context).size.height / 2.sp).h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 400.w,
              height: 400.h,
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
              height: 150.h,
              width: 150.w,
              left: 30.w,
              top: 30.h,
            ),
            Positioned(
              child: Container(color: Colors.green),
              height: 150.h,
              width: 150.w,
              right: 40.w,
              top: 50.h,
            ),
            Positioned(
              child: Container(color: Colors.blue),
              height: 150.h,
              width: 150.w,
              left: 50.w,
              bottom: 80.h,
            ),
            Positioned(
              child: Container(
                color: Color(0xFFFF0000),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.brown,
                    height: 50.h,
                    width: 50.h,
                  ),
                ),
              ),
              height: 150.h,
              width: 150.w,
              right: 30.w,
              bottom: 60.h,
            ),
          ],
        ),
      ),
    );
  }
}
