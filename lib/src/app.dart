import 'package:flutter/material.dart';

import './pages/Home_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
    );
  }

}