import 'package:before_after/before_after.dart';
import 'package:flutter/material.dart';

class BeforeAfterWidget extends StatefulWidget {
  @override
  _BeforeAfterWidgetState createState() => _BeforeAfterWidgetState();
}

class _BeforeAfterWidgetState extends State<BeforeAfterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Before After'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: BeforeAfter(
                  beforeImage: Image.asset('images/after.jpg'),
                  afterImage: Image.asset('images/before.jpg'),
                ),
              ),
              Expanded(
                flex: 1,
                child: BeforeAfter(
                  beforeImage: Image.asset('images/after.jpg'),
                  afterImage: Image.asset('images/before.jpg'),
                  isVertical: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
