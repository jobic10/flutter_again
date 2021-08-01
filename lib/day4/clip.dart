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
    path.lineTo(0, size.height * .7);
    Offset firstControlPoint = Offset(size.width * .3, size.height * .58);
    Offset firstEndPoint = Offset(size.width * .5, size.height * .7);
    Offset secondControlPoint = Offset(size.width * .8, size.height * .88);
    Offset secondEndPoint = Offset(size.width, size.height * .7);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      true; //Change back to false
}
