import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBarDemoPage'),
            centerTitle: true,
            backgroundColor: Colors.orange,
            // leading: IconButton(
            //     onPressed: () {
            //       print('menu');
            //     },
            //     icon: Icon(Icons.menu)),
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    print('search');
                  },
                  icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {
                    print('settings');
                  },
                  icon: Icon(Icons.settings))
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "热门"),
                Tab(text: "推荐"),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: [
                  ListTile(
                    title: Text("第一个tab"),
                  ),
                  ListTile(
                    title: Text("第二个tab"),
                  ),
                  ListTile(
                    title: Text("第三个tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第四个tab"),
                  ),
                  ListTile(
                    title: Text("第五个tab"),
                  ),
                  ListTile(
                    title: Text("第六个tab"),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
