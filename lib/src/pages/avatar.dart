import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/mo.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('MO'),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: AssetImage('assets/mo.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        ),
      ),
    );
  }
}
