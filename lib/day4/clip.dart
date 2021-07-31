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
    debugPrint(size.toString());
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; //Change back to false
  }
}
