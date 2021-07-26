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
          _buildBox(points: 8, color: Colors.red),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                _buildBox(points: 5, color: Colors.indigo),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  _buildBox(points: 1, color: Colors.green),
                                  _buildBox(points: 1, color: Colors.blue),
                                ],
                              ),
                            ),
                            _buildBox(points: 2, color: Colors.brown),
                          ],
                        ),
                      ),
                      _buildBox(points: 3, color: Colors.purple),
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

Widget _buildBox({required Color color, required int points}) {
  return Expanded(
    flex: points,
    child: Container(
      constraints: BoxConstraints.expand(),
      color: color,
      child: Center(
        child: Text(
          '$points',
          style: TextStyle(fontSize: 32.0, color: Colors.white),
        ),
      ),
    ),
  );
}
