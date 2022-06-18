import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container( 
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 180,
            color:Colors.red
          ),
          Container(
            width: 180,    
            color:Colors.orange,
            child: ListView(
              children: [
                Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201504%2F07%2F20150407H1101_S2nLi.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1658110424&t=2e95a9c7dddb579d259e4082f6833fab"),
                Text("我是一个文本")
              ],
            ),
          ),
          Container(
            width: 180,      
            color:Colors.yellow
          ),
          Container(
            width: 180,       
            color:Colors.green
          ),
          Container(
            width: 180,      
            color:Colors.blue
          ),
          Container(
            width: 180,      
            color:const Color.fromRGBO(25, 25, 112, 1)
          ),
          Container(
            width: 180,      
            color:Colors.purple
          ),
        ],
      )
    );
  }
}
