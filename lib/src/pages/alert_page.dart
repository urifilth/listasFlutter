import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Alert page'),
        centerTitle: true,
      ),
      body: Center( 
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.lightBlue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed:() => _mostrarAlerta(context),
          ),
      ),
      floatingActionButton: FloatingActionButton( 
        child: Icon(Icons.follow_the_signs_sharp),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de la alerta, sisisis :D'),
              FlutterLogo( size: 100.0, )
            ],
          ),
          actions: [
            FlatButton(
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
            FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Aceptar')),
          ],
        );
      }
    );

  }
}