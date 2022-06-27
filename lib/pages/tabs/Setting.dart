import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        MaterialButton(
          child: Text("跳转到登录页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        MaterialButton(
          child: Text("跳转到注册页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
        ),
      ],
    );
  }
}
