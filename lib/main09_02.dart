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
    var tempList = listData.map((value){
      return Container(
        child: Column(
          children: [
            Image.network(value['imageUrl']),
            SizedBox(height: 12),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style:TextStyle(
                fontSize: 12
              )
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color:Color.fromRGBO(233, 233, 233, 0.9),
            width: 1
          )
        ),
      );
    });
    return tempList.toList();
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10, //水平 Widget 之间间距
      mainAxisSpacing: 10, //垂直 Widget 之间间距
      padding: EdgeInsets.all(10),
      //childAspectRatio: 0.7, //宽度 / 高度
      crossAxisCount: 2,
      children: _getData(),
    );
  }
}
