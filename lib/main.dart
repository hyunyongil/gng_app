import 'package:flutter/material.dart';

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
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: const Text('我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textScaleFactor: 1.8,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.red,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.white,
                  decorationStyle: TextDecorationStyle.dashed,
                  letterSpacing: 5.0)),
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.blue, 
              width: 2.0
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10)
            )
          ),
          //padding: EdgeInsets.fromLTRB(10,30,5,0),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          //transform: Matrix4.translationValues(100, 0, 0)
          //transform: Matrix4.rotationZ(-0.3),
          //transform: Matrix4.diagonal3Values(1.2, 1, 1),
          alignment: Alignment.topLeft,
    ));
  }
}
