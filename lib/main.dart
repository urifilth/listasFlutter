import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/home_temp.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
 //**mateapp para crear toda la interfaz básica */
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}