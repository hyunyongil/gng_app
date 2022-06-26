// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme: ThemeData(primarySwatch: Colors.amber),
      // routes: {
      //   '/form': (context) => FormPage(),
      //   '/search': (context) => SearchPage(),
      // },
      onGenerateRoute: onGenerateRoute,
    );
  }
}
