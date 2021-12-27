import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body:Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: ()=>_mostrarAlert(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: StadiumBorder()
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_return),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
    
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de alerta'),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: ()=>Navigator.of(context).pop(), 
              child: Text('Cancelar')
            ),
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              child: Text('Ok')
            ),
          ],
        );
      }
    );
  }
}