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
      /**
       * Vamos añadir el boton flotante que ya viene por defecto para el 
       * scaffold en flutter y solo se añade el atributo que recibe un widget
       * entonces puede ser un texto o cualquier otra cosa que sea un widget
       * no necesariamente un boton
       * 
       * Enviamos al clase Floting Action Button con el 
       * atributo onpressed para ejecutar el click del boton
       * esta clase recibe tammbien child que es un widget que se insertara
       * dentro del button como un texto o un icono
       * 
       * para insertar el icono ocuparemos un widget llamado
       * Icon que recibSe un valor que hacer referencia a la clase
       * Icons para traer los iconos
       */
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('hola');
        },
      ),
    );
  }
}
