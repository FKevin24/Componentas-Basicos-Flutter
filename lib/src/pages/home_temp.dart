import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco','Seis','Siete','Ocho','Nueve','Dies'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
       // children: _crearItems() 
        children: _crearItemsCorta() 
      ),
    );
  }

  // ignore: unused_element
  List<Widget> _crearItems(){

    final lista = <Widget>[];
    
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(Divider());
   }

    return lista;
  }

  List<Widget> _crearItemsCorta(){
    return opciones.map((e){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(e + '!'),
            subtitle: Text('Kevin'),
            leading: Icon(Icons.adb_outlined),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      ); 
    }).toList();

  }
}