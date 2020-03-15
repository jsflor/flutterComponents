import 'package:flutter/material.dart';
import 'package:flutterapp/src/pages/AlertPage.dart';
import 'package:flutterapp/src/pages/AvatarPage.dart';
import 'package:flutterapp/src/pages/CardPage.dart';
import 'package:flutterapp/src/pages/HomePage.dart';

Map<String, WidgetBuilder> getAppRoutes(){
  return {
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}

