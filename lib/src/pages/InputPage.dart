import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = "";
  String _email = "";
  String _password = "";
  String _date = "";

  String _optSelected = "strong";
  List<String> _powers = ['strong', 'fast', 'agility'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs de texto")
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createDropdown(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createPerson(),
        ],
      )
    );
  }
  Widget _createInput(){
    return TextField(
      /*autofocus: true,*/
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        counter: Text("Letras ${_name.length}"),
        hintText: "Nombre",
        labelText: "Nombre",
        helperText: "Solo es el nombre",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (value){
        setState(() {
          _name = value;
        });
      },
    );
  }

  Widget _createPerson(){
    return ListTile(
      title: Text("Nombre es : $_name"),
      subtitle: Text("Email: $_email"),
      trailing: Text(_optSelected),
    );
  }

  Widget _createEmail() {
     return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          hintText: "Email",
          labelText: "Email",
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
      ),
      onChanged: (value){
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _createPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          hintText: "Password",
          labelText: "Password",
          suffixIcon: Icon(Icons.lock),
          icon: Icon(Icons.lock_open)
      ),
      onChanged: (value){
        setState(() {
          _password = value;
        });
      },
    );
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          hintText: "Birth Date",
          labelText: "Birth Date",
          suffixIcon: Icon(Icons.calendar_today),
          icon: Icon(Icons.calendar_today)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus((new FocusNode()));
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025)
    );
    if(picked != null){
      setState(() {
        _date = picked.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getOptDropdown(){
    List<DropdownMenuItem<String>> list = new List();
    _powers.forEach((p){
      list.add(DropdownMenuItem(
        child: Text(p),
        value: p,
      ));
    });
    return list;
  }

  Widget _createDropdown() {
    return DropdownButton(
      value: _optSelected,
      items: getOptDropdown(),
      onChanged: (opt){
        setState(() {
          _optSelected = opt;
        });
      },
    );
  }
}
