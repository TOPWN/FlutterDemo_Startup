import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs Demo'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.directions_bike),
            title: Text("Bike"),
          ),
          ListTile(
            leading: Icon(Icons.directions_transit),
            title: Text("Train"),
            onTap: () {
//              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.directions_boat),
            title: Text("Boat"),
            onTap: () {
//              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
