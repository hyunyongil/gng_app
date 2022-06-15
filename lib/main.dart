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
      child: Text('你好Flutter 222',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20.5,
            color: Colors.red,
            //color: Color.fromRGBO(244, 233, 121, 0.5)
          )),
    );
  }
}
