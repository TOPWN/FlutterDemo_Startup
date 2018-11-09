import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpinningSquare extends StatefulWidget {
  @override
  _SpinningSquareState createState() => _SpinningSquareState();
}

class _SpinningSquareState extends State<SpinningSquare>
    with SingleTickerProviderStateMixin {
  AnimationController _animation;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    // We use 3600 milliseconds instead of 1800 milliseconds because 0.0 -> 1.0
    // represents an entire turn of the square whereas in the other examples
    // we used 0.0 -> math.pi, which is only half a turn.
    _animation = AnimationController(
      duration: const Duration(milliseconds: 3600),
      vsync: this,
    )..repeat();
//    animation = new Tween(begin: 10.0, end: 100.0).animate(_animation);
//    _animation.forward();
    animation = CurvedAnimation(parent: _animation, curve: Curves.elasticOut);
    _animation.repeat();
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: animation,
        child: Container(
          width: 10.0,
          height: 20.0,
          color: Colors.red,
        ));
  }
}
