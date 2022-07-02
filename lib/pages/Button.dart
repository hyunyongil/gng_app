// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示页面"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  print("普通按钮");
                },
                child: Text("普通按钮"),
              ),
              SizedBox(width: 5),
              MaterialButton(
                onPressed: () {
                  print("有颜色按钮");
                },
                child: Text("有颜色按钮"),
                color: Colors.blue,
                textColor: Colors.white,
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  print("有阴影按钮");
                },
                child: Text("有阴影按钮"),
                color: Colors.blue,
                elevation: 10,
                textColor: Colors.white,
              ),
              SizedBox(width: 5),
              RaisedButton.icon(
                  onPressed: () {
                    print("图标按钮");
                  },
                  color: Colors.indigo,
                  textColor: Colors.white,
                  icon: Icon(Icons.search),
                  label: Text('图标按钮'))
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 200,
                child: MaterialButton(
                  onPressed: () {
                    print("设置按钮宽度高度");
                  },
                  child: Text("宽度高度"),
                  color: Colors.orange,
                  elevation: 10,
                  textColor: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 60,
                  child: MaterialButton(
                    onPressed: () {
                      print("自适应按钮");
                    },
                    child: Text("自适应按钮"),
                    color: Colors.brown,
                    elevation: 10,
                    textColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  print("圆角按钮");
                },
                child: Text("圆角按钮"),
                color: Colors.deepPurple,
                elevation: 10,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 60,
                child: MaterialButton(
                  onPressed: () {
                    print("圆形按钮");
                  },
                  child: Text("圆形"),
                  color: Colors.teal,
                  splashColor: Colors.grey,
                  elevation: 10,
                  textColor: Colors.white,
                  shape: CircleBorder(side: BorderSide(color: Colors.white)),
                ),
              ),
              FlatButton(
                  color: Colors.yellow,
                  textColor: Colors.red,
                  onPressed: () {
                    print("扁平化按钮");
                  },
                  child: Text("按钮")),
              OutlineButton(
                  color: Colors.blue,
                  textColor: Colors.green,
                  onPressed: () {
                    print("OutlineButton");
                  },
                  child: Text("按钮"))
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                child: OutlineButton(
                  onPressed: () {
                    print("自适应");
                  },
                  child: Text("注册"),
                ),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      print("普通按钮");
                    },
                    child: Text("登录"),
                  ),
                  SizedBox(width: 5),
                  MaterialButton(
                    onPressed: () {
                      print("有颜色按钮");
                    },
                    child: Text("注册"),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                  MyButton(
                      text: "自定义按钮",
                      width: 130,
                      height: 40,
                      color1: 255,
                      color2: 23,
                      color3: 140,
                      pressed: () {
                        print("自定义按钮组件");
                      }),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

//自定义按钮组件
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final color1;
  final color2;
  final color3;
  final double width;
  final double height;
  const MyButton(
      {this.text = '',
      this.color1 = 200,
      this.color2 = 100,
      this.color3 = 70,
      this.pressed = null,
      this.width = 80,
      this.height = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Color.fromRGBO(color1, color2, color3, 1),
      child: MaterialButton(
        textColor: Colors.white70,
        child: Text(text),
        onPressed: pressed,
      ),
    );
  }
}
