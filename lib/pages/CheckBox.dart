import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key? key}) : super(key: key);

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: flag,
                onChanged: (value) {
                  setState(() {
                    flag = value!;
                  });
                },
                activeColor: Colors.red,
              )
            ],
          ),
          Row(
            children: <Widget>[Text(flag ? "选中" : "未选中")],
          ),
          SizedBox(height: 40),
          CheckboxListTile(
            value: flag,
            onChanged: (value) {
              setState(() {
                flag = value!;
              });
            },
            title: Text("标题"),
            subtitle: Text("这是二级标题"),
            //secondary: Icon(Icons.help),
            secondary: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://pics4.baidu.com/feed/b7fd5266d0160924a2c0b22df9c5b6ffe7cd3461.jpeg?token=d931db0aab762bdb7baef05a66ac8ba6&s=6C50E60CDE32129C7E4450980300F08C")),
          )
        ],
      ),
    );
  }
}
