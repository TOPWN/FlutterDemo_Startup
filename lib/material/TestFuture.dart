import 'dart:async';
import 'package:flutter/material.dart';

class TestFuture extends StatelessWidget {
  void pressButton(BuildContext context) async {
    //step1
    //async函数只执行到它遇到的第一个await表达式(详细信息)的时候。然后它返回一个Future对象，直到等待表达式完成后才恢复执行。
    //所以这里step1执行完成后才执行step2，想要step2不等待step1，需要将step2代码放在step1（await)之上。
    await Future.delayed(Duration(seconds: 2), () {
      print('refresh');
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Text("title"),
              children: <Widget>[
                SimpleDialogOption(child: Text("yes")),
                SimpleDialogOption(child: Text("no")),
              ],
            );
          });
    });
//    Scaffold.of(context).showSnackBar(SnackBar(
//      content: Text("come"),
//      backgroundColor: Colors.black,
//      duration: Duration(seconds: 2),
//    ));

    //step2
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("title"),
            children: <Widget>[
              SimpleDialogOption(child: Text("come")),
              SimpleDialogOption(child: Text("go")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Future")),
        body: Center(
            child: RaisedButton(
          onPressed: () {
            pressButton(context);
          },
          child: Text("button"),
        )));
  }
}
