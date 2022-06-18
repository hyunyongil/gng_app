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
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        ListTile(
          leading: Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2F759b26eaec272fffb4f9e203d52106138c103dfa.png&refer=http%3A%2F%2Fi0.hdslb.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1658107745&t=032f6913199244bd4fb5484bf0104140'),  
          title: Text(
            '1.第三艘航母福建舰下水，中国进入“三航母时代”！',
            style: TextStyle(
              fontSize:24
            )
          ),
          subtitle: Text('来源：环球时报作者：郭媛丹 樊巍 陈康 刘海生 柳玉鹏')
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('2.第三艘航母福建舰下水，中国进入“三航母时代”！'),
          subtitle: Text('来源：环球时报作者：郭媛丹 樊巍 陈康 刘海生 柳玉鹏')
        ),
        ListTile(
          leading: Icon(Icons.pages),          
          title: Text('3.第三艘航母福建舰下水，中国进入“三航母时代”！'),
          subtitle: Text('来源：环球时报作者：郭媛丹 樊巍 陈康 刘海生 柳玉鹏')
        ),
        ListTile(
          leading: Icon(Icons.access_alarm_rounded),
          title: Text('4.第三艘航母福建舰下水，中国进入“三航母时代”！'),
          subtitle: Text('来源：环球时报作者：郭媛丹 樊巍 陈康 刘海生 柳玉鹏')
        ),
        ListTile(
          trailing: Icon(Icons.panorama_fisheye,color: Colors.blue,), 
          title: Text('5.第三艘航母福建舰下水，中国进入“三航母时代”！'),
          subtitle: Text('来源：环球时报作者：郭媛丹 樊巍 陈康 刘海生 柳玉鹏')
        ),
        ListTile(
          leading: Icon(Icons.sentiment_very_dissatisfied,color: Colors.red,size:40), 
          title: Text('6.第三艘航母福建舰下水，中国进入“三航母时代”！'),
          subtitle: Text('来源：环球时报作者：郭媛丹 樊巍 陈康 刘海生 柳玉鹏')
        ),
      ],
    );
  }
}
