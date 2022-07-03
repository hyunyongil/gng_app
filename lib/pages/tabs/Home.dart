import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
              Navigator.pushNamed(context, '/search', arguments: {"id": 123});
            },
            child: Text("跳转到搜索页面"),
            color: Theme.of(context).colorScheme.surface,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(height: 20),
          MaterialButton(
            child: Text("跳转到商品页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            },
            color: Theme.of(context).colorScheme.primary,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
              Navigator.pushNamed(context, '/appBarDemo');
            },
            child: Text("跳转到appbar"),
            color: Theme.of(context).colorScheme.surface,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
              Navigator.pushNamed(context, '/tabBarController');
            },
            child: Text("TabController定义顶部tab切换"),
            color: Theme.of(context).colorScheme.surface,
            textTheme: ButtonTextTheme.primary,
          ),
          SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
            child: Text("学员登记系统"),
            color: Theme.of(context).colorScheme.secondary,
            textTheme: ButtonTextTheme.normal,
          ),
        ],
      ),
    );
  }
}
