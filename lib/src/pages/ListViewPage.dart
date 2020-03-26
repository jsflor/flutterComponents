import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listNumbers = new List();
  int _lastItem = 0;

  @override
  void initState() {
    super.initState();
    _add10();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _add10();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _createList(),
    );
  }

  Widget _createList(){
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listNumbers.length,
        itemBuilder: (BuildContext context, int index){
          final imagen = _listNumbers[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image=${imagen}'),
            placeholder: AssetImage('assets/original.gif'),
          );
        }
    );
  }

  void _add10(){
    for(var i = 0; i < 10; i++){
      _lastItem++;
      _listNumbers.add(_lastItem);
    }
    setState(() {

    });
  }
}
