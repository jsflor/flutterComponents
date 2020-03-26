import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _sliderValue = 100.0;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createChceckbox(),
            Expanded(
              child: _createImage(),
            )
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: "Tamaño imagen",
      value: _sliderValue,
      min: 10,
      max: 400,
      onChanged: (_blockCheck) ? null : (value){
        setState(() {
          _sliderValue = value;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/fa/8a/5e/fa8a5e96b89a7c10fac879658694eac7.jpg'),
      width: _sliderValue,
      fit: BoxFit.contain
    );
  }

  Widget _createChceckbox() {
    /*return Checkbox(
      value: _blockCheck,
      onChanged: (v){
        setState(() {
          _blockCheck = v;
        });
      },
    );*/
    return CheckboxListTile(
      value: _blockCheck,
      onChanged: (v){
        setState(() {
          _blockCheck = v;
        });
      },
      title: Text('block slider'),
    );
  }
}
