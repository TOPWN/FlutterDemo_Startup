import 'package:flutter/material.dart';
import 'startup.dart';
import 'basic.dart';
import 'material.dart';
import 'button.dart';
import 'counter.dart';
import 'shoppinglist.dart';

void main() => runApp(MyApp());

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
//      home: MyButton(),
//      home: Counter(),
      home: ShoppingList(
        products: initProducts(),
      ),
    );
  }
}
