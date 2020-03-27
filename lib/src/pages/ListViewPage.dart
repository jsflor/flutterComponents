import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listNumbers = new List();
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _add10();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        /*_add10();*/
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          _createLoading()
        ],
      ),
    );
  }

  Widget _createList(){
    return RefreshIndicator(
      onRefresh: getPage1,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listNumbers.length,
          itemBuilder: (BuildContext context, int index){
            final imagen = _listNumbers[index];
            return FadeInImage(
              image: NetworkImage('https://picsum.photos/500/300/?image=${imagen}'),
              placeholder: AssetImage('assets/original.gif'),
            );
          }
      ),
    );
  }

  Future<Null> getPage1() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, (){
      _listNumbers.clear();
      _lastItem++;
      _add10();
    });
    return Future.delayed(duration);
  }

  void _add10(){
    for(var i = 0; i < 10; i++){
      _lastItem++;
      _listNumbers.add(_lastItem);
    }
    setState(() {

    });
  }

  Future<Null> fetchData() async {
    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    return new Timer(duration, respHTTP);
  }

  void respHTTP() {
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );

    _add10();
  }

  Widget _createLoading() {
    if(_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          )
          ,SizedBox(height: 15.0,)
        ],
      );
    } else {
      return Container();
    }
  }
}
