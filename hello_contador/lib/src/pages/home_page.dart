/*
dart: se ocupa el _ para separar palabras
y tenemos una carpeta para poner las paginas.
Cada pagina que nosotros pongamos es un widget y es 
la representacion de un espacio del scalffold de la pantalla
*/

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = TextStyle(fontSize: 45);
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
      /* Que pasaria si yo quisiera añadir mas texto en el 
        body, tendria que ocupar otro widget ya que una propiedad
        solo puede recibir un hijo
        para eso ocupamos el widget de column o el de row para hacerlo
        con filas o columnas

        Column widget: despliega sus hijos en forma vertical
      */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hola Mundo',
              style: this.estiloTexto,
            ),
            Text(
              '0',
              style: this.estiloTexto,
            ),
          ],
        ),
      ),
    );
  }
}
