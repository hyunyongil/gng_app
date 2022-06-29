import 'package:flutter/material.dart';
import '../Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Row(
              children: <Widget>[
                Expanded(
                    child: TabBar(
                  indicatorColor: Colors.orange,
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                    Tab(text: "查询"),
                    Tab(text: "收藏"),
                  ],
                ))
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
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第四个tab3"),
                  ),
                  ListTile(
                    title: Text("第五个tab"),
                  ),
                  ListTile(
                    title: Text("第六个tab"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第四个tab4"),
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
