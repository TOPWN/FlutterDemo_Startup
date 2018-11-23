import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabBarState();
  }
}

class TabBarState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  Color _themeColor = Colors.blue;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, initialIndex: 0, vsync: this);
    _tabController.addListener(getCurrentIndex);
  }

  void getCurrentIndex() {
    print("currentIndex:${_tabController.index}");
    setState(() {
      switch (_tabController.index) {
        case 0:
          _themeColor = Colors.blue;
          break;
        case 1:
          _themeColor = Colors.red;
          break;
        case 2:
          _themeColor = Colors.black38;
          break;
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: _themeColor,
      ),
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Car", icon: Icon(Icons.directions_car)),
              Tab(text: "Train", icon: Icon(Icons.directions_transit)),
              Tab(text: "Bike", icon: Icon(Icons.directions_bike)),
            ],
            controller: _tabController,
            indicator: ShapeDecoration(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
          controller: _tabController,
        ),
        bottomNavigationBar: Container(
          height: 60.0,
          color: _themeColor,
          child: TabBar(
            tabs: [
              Tab(text: "Car", icon: Icon(Icons.directions_car)),
              Tab(text: "Train", icon: Icon(Icons.directions_transit)),
              Tab(text: "Bike", icon: Icon(Icons.directions_bike)),
            ],
            controller: _tabController,
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
