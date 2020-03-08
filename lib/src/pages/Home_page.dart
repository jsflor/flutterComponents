import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final myTextStyle = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Taps number:", style: TextStyle(fontSize: 25)),
            Text("0", style: myTextStyle)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}