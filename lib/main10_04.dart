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
    return Row(
      children: [
          Expanded(
            flex: 1,
            child: IconContainer(
              Icons.add, 
              color: Colors.black12, 
              size: 36
            )
          ),
          Expanded(
            flex: 2,
            child: IconContainer(
              Icons.delete, 
              color: Colors.black26, 
              size: 36
            )
          ),
          Expanded(
            flex: 1,
            child: IconContainer(
              Icons.edit, 
              color: Colors.black38, 
              size: 36
            )
          ),          
      ],
    );
  }
}


class IconContainer extends StatelessWidget{
  double size=20.0;
  Color color=Colors.red;
  IconData icon;
  IconContainer(this.icon,{required this.color, required this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,size: 
          this.size,color: 
          Colors.white
        )
      ),
    );
  }
}