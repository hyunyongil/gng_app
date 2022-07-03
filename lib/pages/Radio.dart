import 'package:flutter/material.dart';

class RaioDemoPage extends StatefulWidget {
  RaioDemoPage({Key? key}) : super(key: key);

  @override
  State<RaioDemoPage> createState() => _RaioDemoPageState();
}

class _RaioDemoPageState extends State<RaioDemoPage> {
  int _sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('单选按钮演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            // Row(
            //   children: <Widget>[
            //     Text("男:"),
            //     Radio(
            //       value: 1,
            //       onChanged: (v) {
            //         setState(() {
            //           _sex = v as int;
            //         });
            //       },
            //       groupValue: _sex,
            //     ),
            //     SizedBox(width: 20),
            //     Text("女:"),
            //     Radio(
            //       value: 2,
            //       onChanged: (v) {
            //         setState(() {
            //           _sex = v as int;
            //         });
            //       },
            //       groupValue: _sex,
            //     )
            //   ],
            // ),
            // Row(
            //   children: <Widget>[
            //     Text("${_sex}"),
            //     Text(
            //       _sex == 1 ? "男" : "女",
            //     )
            //   ],
            // ),
            // Expanded(
            //   child: Row(
            //     children: <Widget>[
            //       RadioListTile(
            //         selected: _sex == 1,
            //         title: Text("标题1"),
            //         subtitle: Text("这是二级标题1"),
            //         secondary: Image.network(
            //             "https://pics4.baidu.com/feed/b7fd5266d0160924a2c0b22df9c5b6ffe7cd3461.jpeg?token=d931db0aab762bdb7baef05a66ac8ba6&s=6C50E60CDE32129C7E4450980300F08C"),
            //         value: 1,
            //         onChanged: (v) {
            //           setState(() {
            //             _sex = v as int;
            //           });
            //         },
            //         groupValue: _sex,
            //       ),
            //       RadioListTile(
            //         selected: _sex == 2,
            //         title: Text("标题2"),
            //         subtitle: Text("这是二级标题2"),
            //         secondary: Image.network(
            //             "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-12-10%2F5c0e374f5051c.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1659434885&t=7d08a34f123a10edd399cd7a42c91a0b"),
            //         value: 2,
            //         onChanged: (v) {
            //           setState(() {
            //             _sex = v as int;
            //           });
            //         },
            //         groupValue: _sex,
            //       )
            //     ],
            //   ),
            // )
            SizedBox(height: 40),
            Switch(
                value: flag,
                onChanged: (v) {
                  setState(() {
                    print(v);
                    flag = v;
                  });
                })
          ],
        ),
      ),
    );
  }
}
