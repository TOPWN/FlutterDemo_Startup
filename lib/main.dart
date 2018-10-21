import 'package:flutter/material.dart';
import 'startup.dart';
import 'basic.dart';
import 'material.dart';
import 'button.dart';
import 'counter.dart';
import 'shoppinglist.dart';
import 'BasicAppBarSample.dart';
import 'TabBarSample.dart';
import 'AppBarBottomSample.dart';
import 'ListViewSample.dart';
import 'TextFieldSample.dart';
import 'TestFuture.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
//      home: RandomWords(),
//      home: MyScaffold(),
//      home: TutorialHome(),
//      home: MyButtonWidget(),
//      home: Counter(),
//      home: ShoppingList(
//        products: initProducts(),
//      ),
//      home: BasicAppBarSample(),
//      home: TabBarDemo(),
//      home: AppBarBottomSample(),
//      home: ListViewDemo(),
//      home: TextFieldSample(),
      home: TestFuture(),
    );
  }
}
