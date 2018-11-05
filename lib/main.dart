import 'package:flutter/material.dart';
import 'package:startup_namer/material/startup.dart';
import 'package:startup_namer/material/basic.dart';
import 'package:startup_namer/material/material.dart';
import 'package:startup_namer/material/button.dart';
import 'package:startup_namer/material/counter.dart';
import 'package:startup_namer/material/shoppinglist.dart';
import 'package:startup_namer/material/BasicAppBarSample.dart';
import 'package:startup_namer/material/TabBarSample.dart';
import 'package:startup_namer/material/AppBarBottomSample.dart';
import 'package:startup_namer/material/ListViewSample.dart';
import 'package:startup_namer/material/TextFieldSample.dart';
import 'package:startup_namer/material/TestFuture.dart';
import 'package:startup_namer/cupertino/CupertinoSwitchTest.dart';
import 'cupertino/CupertinoPickerDemo.dart';
import 'material/WrapDemo.dart';
import 'cupertino/CupertinoSliderDemo.dart';
import 'cupertino/CupertinoAlertDemo.dart';
import 'qqslidedrawer/SlideBody.dart';
import 'material/AnimationDemo.dart';
import 'material/AnimationLogoFade.dart';

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
//      home: TestFuture(),
//      home: CupertinoSwitchDemo(),
//      home: CupertinoPickerDemo(),
//      home: WrapDemo(),
//      home: CupertinoSliderDemo(),
//      home: CupertinoAlertDemo(),
//      home: SlideBody(),
//      home: AnimationDemo(),
      home: LogoFade(),
    );
  }
}
