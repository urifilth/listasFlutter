import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
        centerTitle: true,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    print(menuProvider.opciones);

    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems() {

    return [
      ListTile(title: Text('Hola mundo varias veces! XD'),
      ),
      Divider(color: Colors.deepPurpleAccent,),
      ListTile(title: Text('Hola mundo varias veces xdd'),
      ),
      Divider(color: Colors.limeAccent),
      ListTile(title: Text('Otro más y ya :v'),
      ),
      Divider(),
    ];
  }
}