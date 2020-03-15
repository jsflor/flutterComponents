import 'package:flutter/material.dart';
import 'package:flutterapp/src/pages/AlertPage.dart';
import 'package:flutterapp/src/providers/MenuProvider.dart';
import 'package:flutterapp/src/utils/icon_string_util.dart';

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
          children: _listItems(snapshot.data, context),
        );
      },
    );
//    return ListView(
//      children: _listItems(),
//    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context){
    final List<Widget> opts = [];

    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.lightBlueAccent),
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          /*final route = MaterialPageRoute(
            builder: ( context ) => AlertPage()
          );
          Navigator.push(context, route);*/
        }
      );
      opts.add(widgetTemp);
      opts.add(Divider());
    });
    return opts;
  }
}
