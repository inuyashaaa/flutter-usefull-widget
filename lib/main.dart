import 'package:animated/widgets/AnimatedContainer.dart';
import 'package:animated/widgets/DrawerWidget.dart';
import 'package:animated/widgets/ScreenUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/SwipeDismiss.dart';

void main() => runApp(MaterialApp(
      title: 'Animated Container',
      debugShowCheckedModeBanner: false,
      routes: {
        '/animated': (context) => AnimatedContainerWidget(),
        '/drawer': (context) => DrawerWidgetCus(),
        '/dismiss': (context) => SwipeDismiss(),
        '/screenutil': (context) => ScreenUtilWidget(),
      },
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animated');
              },
              child: Text('Animated Controller'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/drawer');
              },
              child: Text('Drawer'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dismiss');
              },
              child: Text('Swipe Dismiss'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screenutil');
              },
              child: Text('Screen Util'),
            ),
          ],
        ),
      ),
    );
  }
}
