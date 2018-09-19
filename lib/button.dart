import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
//      child: Container(
////        height: 72.0,
////        width: 100.0,
//        constraints: BoxConstraints(maxWidth: 100.0, maxHeight: 200.0),
//        padding: const EdgeInsets.all(8.0),
//        margin: const EdgeInsets.symmetric(horizontal: 8.0),
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(5.0),
//          color: Colors.blue[500],
//        ),
//        child: Center(
//          child: Text(
//            'Engage',
//            style: TextStyle(color: Colors.white, fontSize: 18.0),
//          ),
//        ),
//      ),
      child: Container(
        constraints: new BoxConstraints.expand(
          height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.teal.shade700,
        alignment: Alignment.center,
        child: new Text('Hello World',
            style: Theme
                .of(context)
                .textTheme
                .display1
                .copyWith(color: Colors.white)),
        foregroundDecoration: new BoxDecoration(
          image: new DecorationImage(
            image: new NetworkImage('https://www.example.com/images/frame.png'),
            centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
          ),
        ),
        transform: new Matrix4.rotationZ(0.1),
      ),
    );
  }
}

class MyButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyButton"),
      ),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}
