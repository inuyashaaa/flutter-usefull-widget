import 'package:flutter/material.dart';

class SwipeDismiss extends StatefulWidget {
  @override
  _SwipeDismissState createState() => _SwipeDismissState();
}

class _SwipeDismissState extends State<SwipeDismiss> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe Dismiss'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            background: Container(color: Colors.blueAccent),
            key: Key(items[index]),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text(items[index] + ' dismissed')));
            },
            child: ListTile(title: Text(items[index])),
          );
        },
      ),
    );
  }
}
