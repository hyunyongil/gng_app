// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(primarySwatch: Colors.orange),
      // routes: {
      //   '/form': (context) => FormPage(),
      //   '/search': (context) => SearchPage(),
      // },
      onGenerateRoute: onGenerateRoute,
    );
  }
}
