import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Builder')),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) => Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: constraints.maxHeight * .2,
                    width: constraints.maxWidth * .5,
                    color: Colors.lightBlue,
                    child: Center(
                      child: Text(
                        'Box 1',
                      ),
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight * .2,
                    width: constraints.maxWidth * .5,
                    color: Colors.lime,
                    child: Center(child: Text('Box 2')),
                  ),
                ],
              ),
              Container(
                height: constraints.maxHeight * .4,
                width: constraints.maxWidth * .5,
                color: Colors.yellow,
                child: Center(
                  child: Text('Box 3'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
