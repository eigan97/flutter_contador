import 'package:flutter/material.dart';

//creamos la clase para el satetful
class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

/**
 * Se necesita otra clase es el estado de la clase anterior
 * esta debe ser privada y por eso se añade el _ en el nombre de la clase
 * El state necesitamos decirle que tipo de statefulwidget hay que manerjar en este caso es el contador Page
 */
class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 45);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    /**
     * Vamos a regresar scaffold en build
     * Scaffold: pagina que cubre toda la pantalla que tiene un 
     * appbar, un floting actions button, un buttom bar
     * y podemos colocar un menu lateral
     */
    return Scaffold(
      appBar: AppBar(
        title: Text('SatetFull'),
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
              style: this._estiloTexto,
            ),
            Text(
              '$_conteo',
              style: this._estiloTexto,
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
          /*
          * una vez que tenemos un statefulwidget
            la funcion que nos permite redibujar los cambios es
            setState() que recibe se pueden poner los cambios fuera o dentro del
            setState solo es necesario llamar setState((){TODO})
          */
          setState(() {
            this._conteo++;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
