import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
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
              color: Theme.of(context).colorScheme.surface,
              textTheme: ButtonTextTheme.primary,
            ),
          ],
        ));
  }
}
