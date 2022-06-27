import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  Map? arguments;
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("商品页面"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/productinfo',
                    arguments: {"pid": 456});
              },
              child: Text("跳转到商品详情"),
              color: Theme.of(context).colorScheme.secondary,
              textTheme: ButtonTextTheme.primary,
            ),
            SizedBox(height: 50),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/productdelete',
                    arguments: {"pid": 871206});
              },
              child: Text("跳转到商品删除"),
              color: Theme.of(context).colorScheme.error,
              textTheme: ButtonTextTheme.primary,
            )
          ],
        ));
  }
}
