import 'package:flutter/material.dart';

class HeroStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Start'),
      ),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HeroEnd()),
              );
            },
            child: Hero(
              tag: 'hero-start',
              child: Container(
                width: 200,
                child: Image.network(
                  'https://media2.fdncms.com/eastbayexpress/imager/u/original/17703015/soccer-ball-ss-img.jpg',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero end'),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'hero-start',
            child: Image.network(
                'https://media2.fdncms.com/eastbayexpress/imager/u/original/17703015/soccer-ball-ss-img.jp'),
          ),
          Text('Pham Huy Manh')
        ],
      ),
    );
  }
}
