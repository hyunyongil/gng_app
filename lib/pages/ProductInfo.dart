import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  Map? arguments;
  ProductInfoPage({Key? key, this.arguments}) : super(key: key);

  @override
  State<ProductInfoPage> createState() =>
      _ProductInfoPageState(arguments: this.arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Map? arguments;
  _ProductInfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: Container(
        child: Text('pid=${arguments!["pid"]}'),
      ),
    );
  }
}
