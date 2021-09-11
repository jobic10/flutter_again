import 'dart:math';
import 'package:flutter/material.dart';

Future<int> fetchDouble(int val) async {
  Random rand = Random();
  await Future.delayed(
    Duration(
      seconds: rand.nextInt(10),
    ),
  );
  return val * 2;
}

Stream<int> getRange(int start, int finish) async* {
  for (int i = start; i <= finish; i++) {
    yield await fetchDouble(i);
  }
}

extension on List<int> {
  int get sum => fold(0, (a, b) => a + b);
}

class GenApp extends StatelessWidget {
  const GenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var extension_res = [1, 2, 3, 4].sum;
    return Scaffold(
      appBar: AppBar(
        title: Text('Generator Functions'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        color: Colors.green,
        child: Column(
          children: [
            Text('$extension_res'),
            FutureBuilder(
              future: fetchDouble(10),
              builder: (context, snapshot) => snapshot.hasData
                  ? Text(snapshot.data.toString())
                  : CircularProgressIndicator(),
            ),
            StreamBuilder(
              builder: (context, snapshot) => Text(
                snapshot.data.toString(),
              ),
              stream: getRange(1, 10),
            ),
          ],
        ),
      ),
    );
  }
}
