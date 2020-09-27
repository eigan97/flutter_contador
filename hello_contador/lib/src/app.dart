import 'package:flutter/material.dart';
import 'package:hello_contador/src/pages/contador_page.dart';
// import 'package:hello_contador/src/pages/home_page.dart';

/*
  * No es correcto tener la logica de varios componentes en un 
  solo archivo es necesario separarla lo hacemos con import en main
*/
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
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}
