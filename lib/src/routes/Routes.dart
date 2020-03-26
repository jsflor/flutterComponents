import 'package:flutter/material.dart';
import 'package:flutterapp/src/pages/AlertPage.dart';
import 'package:flutterapp/src/pages/AvatarPage.dart';
import 'package:flutterapp/src/pages/CardPage.dart';
import 'package:flutterapp/src/pages/HomePage.dart';
import 'package:flutterapp/src/pages/InputPage.dart';
import 'package:flutterapp/src/pages/SliderPage.dart';
import 'package:flutterapp/src/pages/ListViewPage.dart';

Map<String, WidgetBuilder> getAppRoutes(){
  return {
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage()
  };
}

