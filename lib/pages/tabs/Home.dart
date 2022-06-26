import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
      ],
    );
  }
}
