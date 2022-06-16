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
          title: Text('Flutter 테스트 앱'),
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
          child: ClipOval(
            // child: Image.network(
            //   'https://avatars.githubusercontent.com/u/16322601?v=4',
            //   width: 100,
            //   height: 100,
            //   fit:BoxFit.cover
            // ),
            child: Image.asset(
              'images/1.jpg',
              width: 100,
              height: 100,
              fit:BoxFit.cover
            ),
          ),
          // height: 300,
          // width: 300,
          // decoration: BoxDecoration(
          //   color: Colors.black12,
          //   // borderRadius: BorderRadius.all(
          //   //   Radius.circular(150)
          //   // ),
          //   borderRadius: BorderRadius.circular(150),
          //   image: const DecorationImage(
          //     image: NetworkImage("https://avatars.githubusercontent.com/u/16322601?v=4"),
          //     fit: BoxFit.cover              
          //   )
          // ),
    ));
  }
}
