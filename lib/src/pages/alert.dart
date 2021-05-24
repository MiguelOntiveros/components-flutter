import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () {
            return _mostrarAlert(context);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: StadiumBorder(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Text('Título'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Que genial es flutter'),
                FlutterLogo(size: 100.0)
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                  child: Text('Ok'),
                  onPressed: () {
                    return Navigator.of(context).pop();
                  }),
              ElevatedButton(
                  child: Text('Cancelar'),
                  onPressed: () {
                    return Navigator.of(context).pop();
                  }),
            ],
          );
        },
        barrierDismissible: true);
  }
}
