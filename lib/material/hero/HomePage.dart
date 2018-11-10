import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
//        child: Image.asset('images/logo_icon.png'),
        child: CircleAvatar(
          radius: 48.0,
          backgroundColor: Colors.transparent,
//          backgroundImage: AssetImage('images/logo_icon.png'),
          child: Image.asset('images/logo_icon.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Flutter',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final text = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Flutter is Google’s mobile app SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
//      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColor,
              Colors.lightBlueAccent,
            ]),
      ),
      child: Column(
        children: <Widget>[
          logo,
          welcome,
          text,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: body,
    );
  }
}
