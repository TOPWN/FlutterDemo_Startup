import 'package:flutter/material.dart';

class TextFieldSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFieldState();
  }
}

class TextFieldState extends State<TextFieldSample> {
  String name = "";

  void changeText(String text) {
    setState(() {
      name = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo'),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 50.0,
        ),
        child: Theme(
            data: ThemeData(
              primaryColor: Colors.red,
              primaryColorDark: Colors.green,
            ),
            child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(name),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
//              controller: TextEditingController(text: "请输入姓名"),
                    decoration: InputDecoration(
//                    icon: Icon(Icons.account_circle),
                      prefixIcon: Icon(Icons.account_circle),
                      prefixText: "",
                      suffixText: "name",
                      labelText: "Name",
                      helperText: "Your name must be valid string",
                      hintText: "Input your name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      fillColor: Colors.green,
                    ),
                    onChanged: (text) {
                      changeText(text);
                    },
                    onSubmitted: (text) {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
//              controller: TextEditingController(text: "请输入姓名"),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.https),
                      labelText: "Password",
                      helperText: "Your password",
                      hintText: "Input your passwrod",
                      suffixText: "pwd",
//                border: UnderlineInputBorder(
//                  borderSide: BorderSide(color: Colors.red),
//                ),
                      fillColor: Colors.green,
                    ),
                    onSubmitted: (text) {
                      changeText(text);
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
