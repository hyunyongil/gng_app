import 'package:flutter/material.dart';
import 'package:gng_app/pages/DatePickerPub.dart';
import 'package:gng_app/pages/user/RegisterThird.dart';
import '../pages/tabs/Setting.dart';
import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/ProductDelete.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/User.dart';
import '../pages/Button.dart';
import '../pages/TextField.dart';
import '../pages/Radio.dart';
import '../pages/CheckBox.dart';
import '../pages/FormDemo.dart';
import '../pages/DatePicker.dart';
import '../pages/Swiper.dart';
import '../pages/Dialog.dart';

final routes = {
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  '/product': (context) => ProductPage(),
  '/productinfo': (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
  '/productdelete': (context, {arguments}) =>
      ProductDelete(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appBarDemo': (context) => AppBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage(),
  '/setting': (context) => SettingPage(),
  '/buttonPage': (context) => ButtonPage(),
  '/textfield': (context) => TextFieldDemoPage(),
  '/radiofild': (context) => RaioDemoPage(),
  '/checkboxfild': (context) => CheckBoxDemo(),
  '/datepicker': (context) => DatePickerDemo(),
  '/datepickerpub': (context) => DatePickerPub(),
  '/swiperpage': (context) => SwiperPage(),
  '/dialogpage': (context) => DialogPage(),
};

// ignore: prefer_function_declarations_over_variables
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name] as Function;
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
