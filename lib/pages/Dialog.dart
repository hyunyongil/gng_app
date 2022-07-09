import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gng_app/components/MyDialog.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示信息"),
            content: Text("您确定要删除吗？"),
            actions: <Widget>[
              MaterialButton(
                  child: Text("取消"),
                  onPressed: () {
                    //print("取消");
                    Navigator.pop(context, 'Cancel');
                  }),
              MaterialButton(
                  child: Text("确定"),
                  onPressed: () {
                    //print("确定");
                    Navigator.pop(context, 'Ok');
                  })
            ],
          );
        });
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("选择内容"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("Option A"),
                onPressed: () {
                  print("Option A");
                  Navigator.pop(context, 'A');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("Option B"),
                onPressed: () {
                  print("Option B");
                  Navigator.pop(context, 'B');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text("Option C"),
                onPressed: () {
                  print("Option C");
                  Navigator.pop(context, 'C');
                },
              )
            ],
          );
        });
    print(result);
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 210,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("分享 A"),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("分享 B"),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("分享 C"),
                  onTap: () {
                    Navigator.pop(context, 'C');
                  },
                )
              ],
            ),
          );
        });
    print(result);
  }

  _toast() {
    Fluttertoast.showToast(
        msg: "플러터 토스트",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 16.0,
        webShowClose: true,
        webBgColor: "#00b09b",
        webPosition: "center");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                child: Text('alert弹出框-AlertDialog '),
                onPressed: _alertDialog,
              ),
              SizedBox(height: 20),
              MaterialButton(
                child: Text('select弹出框-SimpleDialog'),
                onPressed: _simpleDialog,
              ),
              SizedBox(height: 20),
              MaterialButton(
                child: Text('ActionSheet底部弹出框-showModalBottomSheet'),
                onPressed: _modelBottomSheet,
              ),
              SizedBox(height: 20),
              MaterialButton(
                child: Text('toast-fluttertoast第三方库'),
                onPressed: _toast,
              ),
              MaterialButton(
                onPressed: () {
                  //Navigator.pushNamed(context, '/form');
                  showDialog(
                      context: context,
                      builder: (context) {
                        return MyDialog(title: "关于我们", content: "这里是内容部分");
                      });
                },
                child: Text("显示自定义Dialog"),
                color: Theme.of(context).colorScheme.secondary,
                textTheme: ButtonTextTheme.normal,
              )
              // fluttertoast
            ],
          ),
        ));
  }
}
