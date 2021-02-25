import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Componentes temp'),
        centerTitle: true,
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta(),
      ),
    );
  }

  List <Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text('Este $opt es un ejemplo de lista estática :D'),
        subtitle: Text('Este es un subtitulo mi vro :D'),
      );
      lista..add(tempWidget)
           ..add(Divider(color: Colors.blue,));
    }

    return lista;
  }

  List<Widget> _crearItemsCorta(){
    return opciones.map( ( item ) {
      
      return Column(
        children: [
          ListTile(
            title: Text('Este $item es un ejemplo de map '),
            subtitle: Text('Este es un ejemplo de subtitulo XD'),
            leading: Icon( Icons.workspaces_filled ),
            trailing: Icon( Icons.arrow_forward),
            onTap: (){},
          ),
          Divider(color: Colors.cyanAccent,)
        ],
      );

    }).toList();

  }
}