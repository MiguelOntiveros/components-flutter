import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
        //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 14.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.deepPurple),
            title: Text('Mike Ontiveros'),
            subtitle: Text('desarrollador Full-Stack'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://img.ecologiahoy.com/2017/06/paisajes-naturales-26-1024x640.jpeg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            //fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('pos una carnita pa festejar..'),
          ),
        ],
      ),
    );
  }
}
