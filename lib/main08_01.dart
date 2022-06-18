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
  List<Widget> _getData(){
    List<Widget> list = [];
    for (int i = 0; i < 20; i++) { 
      list.add(ListTile(
        title: Text("我是$i列表")
      ));
    }
    return list.toList();
  }
  @override
  Widget build(BuildContext context) {
    return ListView( 
      children: this._getData()
    );
  }
}
