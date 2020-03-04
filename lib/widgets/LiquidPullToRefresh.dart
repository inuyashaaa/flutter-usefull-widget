import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'dart:async';

class LiquidPullToRefreshWidget extends StatefulWidget {
  LiquidPullToRefreshWidget({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LiquidPullToRefreshWidgetState createState() =>
      _LiquidPullToRefreshWidgetState();
}

class _LiquidPullToRefreshWidgetState extends State<LiquidPullToRefreshWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  static final List<String> _items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N'
  ];

  Future<void> _handleRefresh() {
    final Completer<void> completer = Completer<void>();
    Timer(const Duration(seconds: 3), () {
      completer.complete();
    });
    return completer.future.then<void>((_) {
      _scaffoldKey.currentState?.showSnackBar(
        SnackBar(
          content: const Text('Refresh complete'),
          action: SnackBarAction(
            label: 'RETRY',
            onPressed: () {
              _refreshIndicatorKey.currentState.show();
            },
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: <Widget>[
            Align(alignment: Alignment(-1.0, 0.0), child: Icon(Icons.reorder)),
            Align(alignment: Alignment(-0.3, 0.0), child: Text(widget.title)),
          ],
        ),
      ),
      body: LiquidPullToRefresh(
        key: _refreshIndicatorKey,
        onRefresh: _handleRefresh,
        showChildOpacityTransition: false,
        child: ListView.builder(
          padding: kMaterialListPadding,
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            final String item = _items[index];
            return ListTile(
              isThreeLine: true,
              leading: CircleAvatar(child: Text(item)),
              title: Text('This item represents $item.'),
              subtitle: const Text(
                'Even more additional list item information appears on line three.',
              ),
            );
          },
        ),
      ),
    );
  }
}
