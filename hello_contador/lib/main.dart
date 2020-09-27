//inportaciones del flutter
import 'package:flutter/material.dart';

//Nuestras importaciones
import 'src/app.dart';

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
