import 'package:flutter/material.dart';

//import 'package:proyecto2/src/pages/alert_page.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/util/icon_string.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Components'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _listaItems(snapshot.data, context),
          );
        });
  }

  List<Widget> _listaItems(List<dynamic> lista, BuildContext context) {
    final List<Widget> opciones = [];
    lista.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(
          Icons.accessibility_new_sharp,
          color: Colors.deepPurple,
        ),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
          /*final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route);*/
        },
      );

      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;
  }
}
