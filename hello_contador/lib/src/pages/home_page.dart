/*
dart: se ocupa el _ para separar palabras
y tenemos una carpeta para poner las paginas.
Cada pagina que nosotros pongamos es un widget y es 
la representacion de un espacio del scalffold de la pantalla
*/

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(context) {
    /**
     * Vamos a regresar scaffold en build
     * Scaffold: pagina que cubre toda la pantalla que tiene un 
     * appbar, un floting actions button, un buttom bar
     * y podemos colocar un menu lateral
     */
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Hola Mundo!'),
      ),
    );
  }
}
