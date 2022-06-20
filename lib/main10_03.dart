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
    return Container(
        height: 800,
        width: 400,
        color: Colors.amber,
        //child: Column
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconContainer(Icons.add, color: Colors.black12, size: 36),
            IconContainer(Icons.delete, color: Colors.black26),
            IconContainer(Icons.update, size: 36)
          ],
        ));
  }
}

class IconContainer extends StatelessWidget {
  double? size;
  Color? color;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: color,
      child: Center(child: Icon(icon, size: size, color: Colors.white)),
    );
  }
}
