// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Demonstrate a factored animation with AnimatedBuilder.

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  // Leave out the height and width so it fills the animating parent
  build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: FlutterLogo(),
    );
  }
}

//class GrowTransition extends StatelessWidget {
//  GrowTransition({this.child, this.animation});
//
//  final Widget child;
//  final Animation<double> animation;
//
//  Widget build(BuildContext context) {
//    return Center(
//      child: AnimatedBuilder(
//          animation: animation,
//          builder: (BuildContext context, Widget child) {
//            return Container(
//              height: animation.value,
//              width: animation.value,
//              child: child,
//            );
//          },
//          child: child),
//    );
//  }
//}
class AnimatedLogo extends AnimatedWidget {
  AnimatedLogo({Key key, this.child, Animation<double> animation})
      : super(key: key, listenable: animation);
  final Widget child;

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: animation.value,
        width: animation.value,
        child: child,
      ),
    );
  }
}

class AnimationBuilderDemo extends StatefulWidget {
  _AnimationBuilderDemoState createState() => _AnimationBuilderDemoState();
}

class _AnimationBuilderDemoState extends State<AnimationBuilderDemo>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    final CurvedAnimation curve = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );
    animation = Tween(begin: 0.0, end: 300.0).animate(curve);
    controller.forward();
  }

  Widget build(BuildContext context) {
//    return AnimatedLogo(
//      child: LogoWidget(),
//      animation: animation,
//    );
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationBuilder"),
      ),
      body: AnimatedLogo(
        child: LogoWidget(),
        animation: animation,
      ),
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}

void main() {
  runApp(AnimationBuilderDemo());
}
