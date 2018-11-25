import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';

class BackdropFilterPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BackdropFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _WavyHeaderImage(),
    );
  }
}

class _WavyHeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Positioned(
            left: 0.0,
            top: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: new Image.asset(
              'images/2018.jpg',
              fit: BoxFit.fill,
            )),
        new Positioned(
          top: 200.0,
          left: 100.0,
          right: 100.0,
          bottom: 200.0,
          child: new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
//              child: new Text(
//                'test',
//                style: Theme.of(context).textTheme.headline,
//                textAlign: TextAlign.center,
//                maxLines: 1,
//              ),
            child: new Container(
              color: const Color.fromRGBO(0, 0, 0, 0.5),
            ),
          ),
        ),
      ],
    );
  }
}
