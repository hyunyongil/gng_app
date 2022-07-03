import 'package:flutter/material.dart';

class RaioDemoPage extends StatefulWidget {
  RaioDemoPage({Key? key}) : super(key: key);

  @override
  State<RaioDemoPage> createState() => _RaioDemoPageState();
}

class _RaioDemoPageState extends State<RaioDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[TextField()],
        ),
      ),
    );
  }
}
