import 'package:flutter/material.dart';

Iterable<int> getRange(int start, int finish) sync* {
  for (int i = start; i <= finish; i++) {
    yield i;
  }
}

class GenApp extends StatelessWidget {
  const GenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generator Functions'),
      ),
      body: Container(
        color: Colors.green,
        child: StreamBuilder(
          builder: (context, snapshot) => Text(
            snapshot.data.toString(),
          ),
        ),
      ),
    );
  }
}
