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
  Widget _getData(context, index) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              child: Image.network(
                listData[index]['imageUrl'],
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 140,
              child: Text(listData[index]['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      child: GridView.builder(
        itemCount: listData.length,
        itemBuilder: _getData,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, crossAxisSpacing: 1, mainAxisSpacing: 1),
      ),
    );
  }
}
