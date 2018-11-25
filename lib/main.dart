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
import 'material/hero/LoginPage.dart';
import 'material/animation/SpinningSquare.dart';
import 'material/DraggableDemo.dart';
import 'material/animation/AnimationPage.dart';
import 'material/paint/CustomPainterDemo.dart';
import 'material/animation/AnimationBuilderDemo.dart';
import 'material/animation/WavyHeaderImage.dart';
import 'material/BackdropFilterDemo.dart';

void main() => runApp(
      //The => expr syntax is a shorthand for { return expr; }. The => notation is sometimes referred to as arrow syntax.
      MyApp(),
    );
//void main() {
//  return runApp(
//    MyApp(),
//  );
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //去除debug版本中右上角的标识
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blue,
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
//      home: LogoFade(),
//      home: LoginPage(),
//      home: SpinningSquare(),
//      home: DragPage(),
//      home: AnimationPage(),
//      home: CustomPainterDemo(),
//      home: AnimationBuilderDemo(),
//      home: WavyHeaderPage(),
      home: BackdropFilterPage(),
    );
  }
}
