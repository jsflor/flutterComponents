import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _myTextStyle = new TextStyle(fontSize: 25);
  int _counter = 0;

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
              Text("Taps number:", style: _myTextStyle),
              Text('$_counter', style: _myTextStyle)
            ],
          )
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30.0 ),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset ),
        Expanded( child: SizedBox() ),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _decrement ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _add ),
      ],
    );
  }

  void _add(){
    setState(() {
      _counter++;
    });
  }

  void _decrement(){
    setState(() {
      _counter--;
    });
  }

  void _reset(){
    setState(() {
      _counter = 0;
    });
  }
}