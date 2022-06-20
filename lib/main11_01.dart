import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.cyanAccent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -0.2),
              child: Icon(Icons.add, size: 40, color: Colors.white),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(Icons.edit, size: 30, color: Colors.white),
            ),
            Positioned(
              bottom: 100,
              right: 0,
              child: Icon(Icons.delete, size: 60, color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
