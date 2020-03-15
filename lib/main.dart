import 'package:flutter/material.dart';
import 'package:flutterapp/src/pages/AlertPage.dart';
import 'package:flutterapp/src/routes/Routes.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Components',
        /*home: new HomePage(),*/
        initialRoute: '/',
        routes: getAppRoutes(),
        onGenerateRoute: (RouteSettings settings){
          return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage()
          );
        },

    );
  }
}

