import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  String _name = "Ning";

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Center(
        child: const Text.rich(
          const TextSpan(
            text: 'Hello', // default text style
            children: const <TextSpan>[
              const TextSpan(
                  text: ' beautiful ',
                  style: const TextStyle(fontStyle: FontStyle.italic)),
              const TextSpan(
                  text: 'world',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
