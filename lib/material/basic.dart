import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
//          Expanded(
//            child: Center(
//              child: Text('Hello, world!'),
//            ),
//          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50.0),
            child: Row(
              children: <Widget>[
                new Expanded(
                  child: new Text('Deliver features faster',
                      textAlign: TextAlign.center),
                ),
                new Expanded(
                  child: new Text('Craft beautiful UIs',
                      textAlign: TextAlign.center),
                ),
                new Expanded(
                  child: new FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: const FlutterLogo(),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 50.0),
            child: Row(
              children: <Widget>[
                const FlutterLogo(),
                const Text(
                    'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
                const Icon(Icons.sentiment_very_satisfied),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50.0),
            child: Row(
              children: <Widget>[
                const FlutterLogo(),
                Expanded(
                  child: const Text(
                      'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
                ),
                const Icon(Icons.sentiment_very_satisfied),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//
//void main() {
//  runApp(MaterialApp(
//    title: 'My app', // used by the OS task switcher
//    home: MyScaffold(),
//  ));
//}
