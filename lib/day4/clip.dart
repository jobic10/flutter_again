import 'package:flutter/material.dart';

class MyClip extends StatelessWidget {
  const MyClip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clip')),
      body: Container(
        child: Stack(
          children: [
            Opacity(
              child: ClipPath(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 30,
                      color: Colors.red,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                clipper: WaveClipper(),
              ),
              opacity: 0.4,
            ),
            Opacity(
              child: ClipPath(
                child: Container(
                  height: 296,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.purple,
                      ],
                    ),
                  ),
                ),
                clipper: WaveClipper(),
              ),
              opacity: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    final upHeight = size.height * .7;
    final downHeight = size.height * .8;
    path.lineTo(0, downHeight);

    // First Controls
    var firstControlPoint = Offset(size.width * .2, upHeight);
    var firstEndPoint = Offset(size.width * .33, downHeight);

    // Second Controls
    var secondControlPoint = Offset(size.width * .5, upHeight);
    var secondEndPoint = Offset(size.width * .66, downHeight);

    // Third Controls
    var thirdControlPoint = Offset(size.width * .8, upHeight);
    var thirdEndPoint = Offset(size.width, downHeight);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      true; //Change back to false
}
