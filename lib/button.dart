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
//        padding: const EdgeInsets.all(8.0),
//        color: Colors.teal.shade700,
        alignment: Alignment.center,
        child: new Text('Hello World',
            style: Theme
                .of(context)
                .textTheme
                .display1
                .copyWith(color: Colors.green)),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new NetworkImage(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537335120869&di=48169b9ceb7ca6a028c8d3f086e75c4f&imgtype=0&src=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20130523%2F20130523215258-449193373.jpg'),
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
