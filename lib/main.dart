import 'package:animated/widgets/AnimatedContainer.dart';
import 'package:animated/widgets/BeforeAfter.dart';
import 'package:animated/widgets/DrawerWidget.dart';
import 'package:animated/widgets/HeroAnimation.dart';
import 'package:animated/widgets/LiquidPullToRefresh.dart';
import 'package:animated/widgets/ScreenUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/StaggeredAnimation.dart';
import 'widgets/SwipeDismiss.dart';

void main() => runApp(MaterialApp(
      title: 'Animated Container',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'MrEavesXLModOT-Reg',
      ),
      routes: {
        '/animated': (context) => AnimatedContainerWidget(),
        '/drawer': (context) => DrawerWidgetCus(),
        '/dismiss': (context) => SwipeDismiss(),
        '/screenutil': (context) => ScreenUtilWidget(),
        '/hero': (context) => HeroStart(),
        '/staggered': (context) => StaggeredAnimation(),
        '/beforeafter': (context) => BeforeAfterWidget(),
        '/liquidpull': (context) =>
            LiquidPullToRefreshWidget(title: 'Liquid Pull To Refresh'),
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
            CustomseButton(
              routerName: '/animated',
              textButton: 'Animated Controller',
            ),
            CustomseButton(
              routerName: '/drawer',
              textButton: 'Drawer',
            ),
            CustomseButton(
              routerName: '/dismiss',
              textButton: 'Swipe Dismiss',
            ),
            CustomseButton(
              routerName: '/screenutil',
              textButton: 'Screen Util',
            ),
            CustomseButton(
              routerName: '/hero',
              textButton: 'Hero Animation',
            ),
            CustomseButton(
              routerName: '/liquidpull',
              textButton: 'Liquid pull to refresh',
            ),
            CustomseButton(
              routerName: '/beforeafter',
              textButton: 'Before After',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomseButton extends StatelessWidget {
  final String routerName;
  final String textButton;

  CustomseButton({this.routerName, this.textButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: FlatButton(
        color: Colors.blueAccent,
        onPressed: () {
          Navigator.pushNamed(context, routerName);
        },
        child: Container(
          width: double.infinity,
          child: Center(
            child: Text(
              textButton,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
