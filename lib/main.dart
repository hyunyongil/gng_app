// ignore_for_file: deprecated_member_use, unnecessary_this
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 테스트 앱'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        direction: Axis.vertical,
        //runAlignment: WrapAlignment.end,
        //alignment: WrapAlignment.center,
        children: <Widget>[
          MyButton('第1季'),
          MyButton('第2季第2季'),
          MyButton('第3季'),
          MyButton('第4季第4'),
          MyButton('第5季'),
          MyButton('第6季第6季第6季第6季'),
          MyButton('第7季第'),
          MyButton('第8季'),
          MyButton('第9季'),
          MyButton('第10季第10季'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String txt;
  //const MyButton(this.txt);
  const MyButton(this.txt, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {},
      child: Text(this.txt),
      textColor: Theme.of(context).accentColor,
    );
  }
}
