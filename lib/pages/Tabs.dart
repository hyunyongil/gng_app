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
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("设置")),
        ],
      ),
    );
  }
}
