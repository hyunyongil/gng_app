import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key? key}) : super(key: key);

  @override
  State<TextFieldDemoPage> createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  var _username = new TextEditingController();
  var _password;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        //child: TextDemo(),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "请输入用户名"),
              controller: _username,
              onChanged: (value) {
                setState(() {
                  _username.text = value;
                });
              },
            ),
            SizedBox(height: 5),
            TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: "密码"),
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 40,
              child: MaterialButton(
                child: Text("登录"),
                onPressed: () {
                  print(_username.text);
                  print(_password);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
              hintText: "请输入搜索的内容", border: OutlineInputBorder()),
        ),
        SizedBox(height: 5),
        TextField(
          maxLines: 4,
          decoration:
              InputDecoration(hintText: "多行文本框", border: OutlineInputBorder()),
        ),
        SizedBox(height: 5),
        TextField(
          obscureText: true,
          decoration:
              InputDecoration(hintText: "密码框", border: OutlineInputBorder()),
        ),
        SizedBox(height: 5),
        TextField(
          //obscureText: true,
          decoration:
              InputDecoration(border: OutlineInputBorder(), labelText: "用户名"),
        ),
        SizedBox(height: 5),
        TextField(
          obscureText: true,
          decoration:
              InputDecoration(border: OutlineInputBorder(), labelText: "密码"),
        ),
        SizedBox(height: 5),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              icon: Icon(Icons.people),
              border: OutlineInputBorder(),
              labelText: "密码"),
        ),
      ],
    );
  }
}
