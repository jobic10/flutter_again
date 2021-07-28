import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Button'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 60,
            width: 170,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  22,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    offset: Offset(0, 10),
                    blurRadius: 10,
                  )
                ]),
            child: Row(
              children: [
                Container(
                  width: 130,
                  height: 60,
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                  child: Text('Home'),
                ),
                Icon(Icons.home),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
