import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  Timer _timer;

  @override
  void initState() {
    super.initState();
    intervalAnimated();
  }

  void intervalAnimated() {
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        final random = Random();

        setState(() {
          _width = random.nextInt(300).toDouble();
          _height = random.nextInt(300).toDouble();
          _color = Color.fromRGBO(
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
            1,
          );
          _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(
            seconds: 1,
          ),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
