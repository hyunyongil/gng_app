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
  Widget _getData(context,index){
    return Container(
      child: Column(
          children: [
            Image.network(listData[index]['imageUrl']),
            SizedBox(height: 12),
            Text(
              listData[index]['title'],
              overflow: TextOverflow.ellipsis,
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
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: listData.length,
        itemBuilder:_getData, 
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
      ),
    );
  }
}
