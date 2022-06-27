import 'package:flutter/material.dart';

class ProductDelete extends StatefulWidget {
  Map? arguments;
  ProductDelete({Key? key, this.arguments}) : super(key: key);

  @override
  State<ProductDelete> createState() =>
      _ProductDeleteState(arguments: this.arguments);
}

class _ProductDeleteState extends State<ProductDelete> {
  Map? arguments;
  _ProductDeleteState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品删除"),
      ),
      body: Container(
        child: Text('pid=${arguments!["pid"]}'),
      ),
    );
  }
}
