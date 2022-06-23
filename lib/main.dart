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

class HomeContent extends StatefulWidget {
  HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List list = ["点击添加数据"];
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        Container(
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {
              setState(() {
                num++;
                list.add('新增数据${num}');
              });
            },
            child: Text("按钮", style: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 10),
        RaisedButton(
          color: Colors.orange,
          onPressed: () {
            setState(() {
              num = 0;
              list = ["点击添加数据"];
            });
          },
          child: Text("清空数据", style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
