import 'package:flutter/material.dart';
import 'package:flutterapp/src/providers/MenuProvider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list(){
//  menuProvider.cargarData();
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );
//    return ListView(
//      children: _listItems(),
//    );
  }

  List<Widget> _listItems(List<dynamic> data){
    final List<Widget> opts = [];

    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.add_alarm, color: Colors.lightBlueAccent),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.lightBlueAccent),
        onTap: (){}
      );
      opts.add(widgetTemp);
      opts.add(Divider());
    });
    return opts;
  }
}
