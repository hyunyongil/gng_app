import 'package:flutter/material.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';
import 'tabs/Home.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key? key, this.index = 0}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [HomePage(), CategoryPage(), SettingPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.orange,
        iconSize: 36,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          //BottomNavigationBarItem(icon: Icon(Icons.message), title: Text("消息")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          //BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), title: Text("分享")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("设置")),
        ],
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              this._currentIndex = 1;
            });
          },
          backgroundColor: _currentIndex == 1 ? Colors.amber : Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "玄泰贤",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    "hyunyongil@naver.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/16322601?v=4"),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.51yuansu.com%2Fbackgd%2Fcover%2F00%2F06%2F79%2F5b68d21a7a7a6.jpg%21%2Ffw%2F780%2Fquality%2F90%2Funsharp%2Ftrue%2Fcompress%2Ftrue&refer=http%3A%2F%2Fpic.51yuansu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1659180136&t=500ebff2a6aa816ee2fa33119f14daf7"),
                          fit: BoxFit.cover)),
                  otherAccountsPictures: <Widget>[
                    Image.network(
                        "https://www.itying.com/images/flutter/3.png"),
                    Image.network(
                        "https://www.itying.com/images/flutter/4.png"),
                    Image.network(
                        "https://www.itying.com/images/flutter/5.png"),
                  ],
                ))
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.people,
                  color: Colors.blue,
                ),
              ),
              title: Text('用户中心'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/setting');
              },
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text("右侧侧边栏"),
      ),
    );
  }
}
