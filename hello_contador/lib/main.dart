import 'package:flutter/material.dart';

/*
  El main es el punto incial de la applicacion
  cuando queremos iniciar una applicacion el framework vendra
  a buscar esta funcion
*/
void main() {
  /*
    runApp es para la ejecucion de la applicacion
    Esta funcion necesita ser importada de package:flutter/material.dart
    esta funcion espera como parametro una clase que extiende de widget
  */
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  //se necesita sobre escribir un metodo build que retorna widget
  @override
  //context tiene toda la informacion del arbol de widget
  Widget build(context) {
    /* 
    Material app es un widget y tiene un constructor donde se le dicen
    sus propiedades, el mas importante es home
    home es un widget
    */
    return MaterialApp(
      /* 
        Para centrar el texto ocupamos un widget center
        que recibe como hijo otro widget que sera centrado
      */
      home: Center(child: Text('hola Mundo')),
    );
  }
}
