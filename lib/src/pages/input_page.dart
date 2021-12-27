import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre    = '';
  String _email     = '';
  String _fecha     = '';
  TextEditingController _inputFieldDateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

Widget _crearInput() {
  return TextField(
    // autofocus: true,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      counter: Text('Letras ${_nombre.length}'),
      hintText: 'Nombre de la persona',
      labelText: 'Nombre',
      helperText: 'Solo es el Nombre',
      suffixIcon: Icon(Icons.accessibility),
      icon: Icon(Icons.account_circle)
    ),
    onChanged: (valor){
      setState(() {
        _nombre = valor; 
      });
    },
  );
}

Widget _crearEmail(){
  return TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Email',
      labelText: 'Email',
      suffixIcon: Icon(Icons.alternate_email),
      icon: Icon(Icons.email)
    ),
    onChanged: (valor)=>setState(() {
        _email = valor; 
    })
 
  );
}

Widget _crearPassword(){
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Password',
      labelText: 'Password',
      suffixIcon: Icon(Icons.lock_open),
      icon: Icon(Icons.lock)
    ),
    onChanged: (valor)=>setState(() {
    })
 
  );
}

Widget _crearFecha(BuildContext context){
  return TextField(
    controller: _inputFieldDateController,
    enableInteractiveSelection: false,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      hintText: 'Fecha de Nacimiento',
      labelText: 'Fecha de Nacimiento',
      suffixIcon: Icon(Icons.perm_contact_calendar),
      icon: Icon(Icons.calendar_today)
    ),
    onTap: (){
      FocusScope.of( context ).requestFocus(new FocusNode());
      _selectDate( context ) ;
    },
 
  );
}

_selectDate(BuildContext context) async{
  DateTime? picket = await showDatePicker(
    context: context, 
    initialDate: new DateTime.now(), 
    firstDate: new DateTime(2018), 
    lastDate: new DateTime(2025)
  );
  if (picket != null){
    setState(() {
      _fecha=picket.toString();
      _inputFieldDateController.text=_fecha;
    });
  }
}

Widget _crearPersona(){
  return ListTile(
    title: Text('Nombre: $_nombre'),
    subtitle: Text('Email: $_email')
  );
}
}