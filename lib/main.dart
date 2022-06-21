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
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    value["imageUrl"],
                    fit: BoxFit.cover,
                  )),
              ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(value["imageUrl"]),
                  ),
                  title: Text(value["title"]),
                  subtitle: Text(
                    value["description"],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ))
            ],
          ),
        );
      }).toList(),
    );
  }
}
