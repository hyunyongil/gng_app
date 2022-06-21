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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(title: Text("电话: 131-3433-6136")),
              ListTile(title: Text("地址: 吉林省延吉市"))
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "李四",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(title: Text("电话: 131-3433-6136")),
              ListTile(title: Text("地址: 吉林省延吉市"))
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "王五",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(title: Text("电话: 131-3433-6136")),
              ListTile(title: Text("地址: 吉林省延吉市"))
            ],
          ),
        )
      ],
    );
  }
}
