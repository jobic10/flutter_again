import 'package:flutter/material.dart';

class ExpandedAssignment extends StatelessWidget {
  const ExpandedAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Assignment'),
      ),
      body: Column(
        children: [
          _buildBox(color: Colors.red, flex: 8),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                _buildBox(
                  color: Colors.indigo,
                  flex: 5,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  _buildBox(color: Colors.lightGreen, flex: 1),
                                  _buildBox(color: Colors.blue, flex: 1),
                                ],
                              ),
                            ),
                            _buildBox(color: Colors.brown, flex: 2),
                          ],
                        ),
                      ),
                      _buildBox(color: Colors.purple, flex: 3),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildBox({required Color color, required int flex}) {
  return Expanded(
    flex: flex,
    child: Container(
      constraints: BoxConstraints.expand(),
      color: color,
      child: Center(
        child: Text(
          '$flex',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    ),
  );
}
