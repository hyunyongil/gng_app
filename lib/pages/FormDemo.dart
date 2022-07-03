import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key? key}) : super(key: key);

  @override
  State<FormDemoPage> createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  String? username;
  String? info;
  int? sex;
  List hobby = [
    {"checked": true, "title": "吃饭"},
    {"checked": false, "title": "睡觉"},
    {"checked": false, "title": "写代码"},
    {"checked": true, "title": "踢足球"}
  ];
  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < hobby.length; i++) {
      tempList.add(Row(
        children: [
          Text(hobby[i]["title"] + ":"),
          Checkbox(
              value: hobby[i]["checked"],
              onChanged: (value) {
                setState(() {
                  hobby[i]["checked"] = value;
                });
              })
        ],
      ));
    }
    return tempList;
  }

  void _sexChanged(value) {
    setState(() {
      sex = value as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学员信息登记系统"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "输入用户信息"),
            onChanged: (v) {
              username = v as String;
            },
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Text("男"),
              Radio(value: 1, groupValue: sex, onChanged: _sexChanged),
              SizedBox(width: 20),
              Text("女"),
              Radio(value: 2, groupValue: sex, onChanged: _sexChanged),
            ],
          ),
          //爱好
          Wrap(
            children: _getHobby(),
          ),
          SizedBox(height: 10),
          TextField(
            maxLines: 4,
            decoration:
                InputDecoration(hintText: "描述信息", border: OutlineInputBorder()),
            onChanged: (v) {
              info = v as String;
            },
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 40,
            child: MaterialButton(
              child: Text("提交信息"),
              onPressed: () {
                print(username);
                print(sex);
                print(hobby);
                print(info);
              },
              color: Colors.blue,
              textColor: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}
