import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Componentes Temp"),
        ),
        body: ListView(
//          children: _crearItems()
        children: _crearItemsShort(),
        ),
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> list = new List<Widget>();
    for(String opt in options){
      final tempWidget = ListTile(
        title: Text(opt),
      );
      list.add(tempWidget);
      list.add(Divider());
    }
    return list;
  }

  List<Widget> _crearItemsShort(){
    return options.map((opt){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opt + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }

}