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
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '我是$i条数据',
          style:TextStyle(color:Colors.white,fontSize: 20)
        ),
        color: Colors.blue,
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 20, //水平 Widget 之间间距
      mainAxisSpacing: 20, //垂直 Widget 之间间距
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.7, //宽度 / 高度
      crossAxisCount: 2,
      children: _getData(),
    );
  }
}
