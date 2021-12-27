import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}

Widget _cardTipo2(){
  final card = Container(
    //clipBehavior: Clip.antiAlias,
    child: Column(
      children: <Widget>[

        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://www.cose.ec/wp-content/uploads/2021/01/travel-landscape-01.jpg'),
          fadeInDuration: Duration( milliseconds: 200 ),
          height: 300.0,
          fit: BoxFit.cover,
        ),

       
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('No tengo idea de que poner')
        )
      ],
    ),
  );
  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow:<BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)
        )
      ]
    ),
  );
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album,color: Colors.blue,),
          title: Text('Titulo de esta tarjeta'),
          subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean suscipit velit sed lacinia scelerisque. In posuere at dolor sed lobortis.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              onPressed: (){}, 
              child: Text('Cancelar')
            ),
            TextButton(
              onPressed: (){}, 
              child: Text('Ok')
            )
          ],
        )
      ],
    ),
  );
}