import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchDemo extends StatefulWidget {
  static const String routeName = '/cupertino/switch';

  @override
  _CupertinoSwitchDemoState createState() => _CupertinoSwitchDemoState();
}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Semantics(
              container: true,
              child: Column(
                children: <Widget>[
                  CupertinoSwitch(
                    value: _switchValue,
                    onChanged: (bool value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                  const Text('Active'),
                ],
              ),
            ),
            Semantics(
              container: true,
              child: Column(
                children: const <Widget>[
                  CupertinoSwitch(
                    value: true,
                    onChanged: null,
                  ),
                  Text('Disabled'),
                ],
              ),
            ),
            Semantics(
              container: true,
              child: Column(
                children: const <Widget>[
                  CupertinoSwitch(
                    value: false,
                    onChanged: null,
                  ),
                  Text('Disabled'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
