import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 30.0,),
          _cardType2()
        ],
      ),
    );
  }
}

Widget _cardType1(){
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Soy el titulo'),
          subtitle: Text('Aqui estamos con la deswcp.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: (){},
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: (){},
            )
          ],
        )
      ],
    ),
  );
}

Widget _cardType2(){
  return Card(
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage('https://www.capturelandscapes.com/wp-content/uploads/2017/03/DSC2441-Panorama.jpeg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 1000),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text("Nose que poner"),
        )
        
      ],
    ),
  );
}
