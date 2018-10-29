import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Car", icon: Icon(Icons.directions_car)),
              Tab(text: "Train", icon: Icon(Icons.directions_transit)),
              Tab(text: "Bike", icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
        bottomNavigationBar: Container(
          height: 60.0,
          color: Colors.blue[500],
          child: TabBar(
            tabs: [
              Tab(text: "Car", icon: Icon(Icons.directions_car)),
              Tab(text: "Train", icon: Icon(Icons.directions_transit)),
              Tab(text: "Bike", icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        drawer: Container(
          color: Colors.white,
          constraints: new BoxConstraints.expand(
            width: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
          ),
          alignment: Alignment.topLeft,
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.directions_bike),
                title: Text("Bike"),
              ),
              ListTile(
                leading: Icon(Icons.directions_transit),
                title: Text("Train"),
              ),
              ListTile(
                leading: Icon(Icons.directions_boat),
                title: Text("Boat"),
                onTap: () {
//                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
