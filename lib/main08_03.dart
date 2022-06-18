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
  //自定义方法
  List list = [];
  HomeContent(){
    for (int i = 0; i < 20; i++) { 
      this.list.add("我是$i条数据");
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder:(context, index){
        return ListTile(
          title: Text(this.list[index]),
        );
      } 
    );
  }
}
