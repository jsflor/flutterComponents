import 'package:flutter/material.dart';

import 'src/pages/HomePage.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Components',
        home: new HomePage()
    );
  }
}

