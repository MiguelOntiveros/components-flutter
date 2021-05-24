import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _fecha = '';
  String _opcionSeleccionada = 'STACK';
  List<String> _stack = ['JAVA', 'ANGULAR', 'REACT', 'DOCKER', 'FLUTTER'];
  TextEditingController _dateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          //_crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'nombre de la persona',
        labelText: 'Nombre',
        helperText: 'solo es el nombre',
        suffixIcon: Icon(Icons.accessible_forward_sharp),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre: $_nombre'),
      subtitle: Text('Email: $_email'),
      leading: Text('Stack: $_opcionSeleccionada'),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _dateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Fecha de Nacimiento',
        labelText: 'Fecha de Nacimiento',
        suffixIcon: Icon(Icons.perm_contact_cal),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2000),
      lastDate: new DateTime(2070),
      locale: Locale('es', 'ES'),
    );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _dateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = [];
    _stack.forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });
    return lista;
  }

  /*Widget _crearDropdown() {
    return DropdownButton(
      value: _opcionSeleccionada,
      items: getOpcionesDropdown(),
      onChanged: (opt) {
        setState(() {
          _opcionSeleccionada = opt;
        });
      },
    );
  }*/
}
