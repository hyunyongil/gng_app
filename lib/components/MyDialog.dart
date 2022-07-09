import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String? title;
  String? content;

  MyDialog({this.title, this.content});

  _showTimer(context) {
    var timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      print('关闭');
      Navigator.pop(context);
      t.cancel(); //取消定时器
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    // TODO: implement build
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: Text("${title}"),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Text(
                  "${content}",
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
