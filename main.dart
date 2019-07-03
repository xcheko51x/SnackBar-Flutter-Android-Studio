import 'package:flutter/material.dart';

void main() => runApp(SnackBarEjemplo());

class SnackBarEjemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "EJEMPLO DE SNACK BAR",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo de SnackBar"),
        ),
        body: SnackBarPagina(),
      ),
    );
  }
}

class SnackBarPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
          onPressed: () {
            final snackBar = SnackBar(
              backgroundColor: Colors.blueAccent,
              content: Text('HOLA A TODOS EN EL CANAL', style: TextStyle(fontWeight: FontWeight.bold),),
            );

            Scaffold.of(context).showSnackBar(snackBar);
          },
        child: Text('Mostrar SnackBar'),
      ),
    );
  }

}