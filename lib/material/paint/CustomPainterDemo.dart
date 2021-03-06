import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomPainterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paint"),
      ),
      body: Center(
        child: CustomPaint(
          painter: MyCustomPainter(),
          size: Size.square(200),
        ),
      ),
//      body: DecoratedBox(
//        decoration: BoxDecoration(
//          gradient: RadialGradient(
//            center: const Alignment(-0.5, -0.6),
//            radius: 0.15,
//            colors: <Color>[
//              const Color(0xFFEEEEEE),
//              const Color(0xFF111133),
//            ],
//            stops: <double>[0.9, 1.0],
//          ),
//        ),
//      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final random = math.Random();
    final paint = Paint();
    for (int i = 0; i < 1000; i++) {
      final x1 = size.width * random.nextDouble();
      final y1 = size.height * random.nextDouble();
      final x2 = size.width * random.nextDouble();
      final y2 = size.height * random.nextDouble();
      paint.color = Color(0xFF000000 | random.nextInt(0xFFFFFF));
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
