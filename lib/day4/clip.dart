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
                  color: Colors.deepOrangeAccent,
                ),
                clipper: WaveClipper(),
              ),
              opacity: 0.5,
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
    // size = Size(size.width - 100, size.height - 100);
    var path = Path();
    path.lineTo(0, size.height);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    print(
        "First Control Point ->  : $firstControlPoint and Fist End Point is $firstEndPoint");
    // var firstControlPoint = Offset(size.width / 4, size.height / 3);
    // path.lineTo(size.width, size.height / 2);
    var secondControlPoint =
        Offset(size.width - size.width / 3.25, size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    print(
        "Second Control Point ->  : $secondControlPoint and Second End Point is $secondEndPoint");

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    print('Line to ${size.width} and y is ${size.height}');
    print('Line to ${size.width} and y is ${size.height - 40}');

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; //Change back to false
  }
}
