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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        childAspectRatio: 1.7,
        crossAxisCount: 2,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/1.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/2.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/3.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/4.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/5.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/6.png',
              fit:BoxFit.cover,
            )
          ),
                  Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/1.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/2.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/3.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/4.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'ht tps://www.itying.com/images/flutter/5.png',
              fit:BoxFit.cover,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child:Image.network(
              'https://www.itying.com/images/flutter/6.png',
              fit:BoxFit.cover,
            )
          ),
        ],
      )
    );
  }
}
