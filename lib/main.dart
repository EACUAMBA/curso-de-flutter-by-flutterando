//Metodo principal da aplicação, o primeiro a rodar.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  //Este metodo é do flutter, ele é utilizado para iniciar a nossa aplicação, como parametro ele precisa de uma widget.
  //Um widgets é um estado de tela, é uma classe que estende um widget. Entenda como conponent.
  //Nós vamos colocar widgets sobre widgets e assim formaremos de uma forma declarativa a nossa aplicação.
  //Vamos usar widgets especificos para fazer coisas eespecificas, nesse formatode child: widget

  //Temos dois tipos de widgets, stateless(não muda de estado) e statefull(Muda de estado)
  runApp(
    Container(
    child: Center(
      child: Text(
        'Edilson aprendendo Flutter.',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 16.0,
        ),
      ),
    ),
  ));
}
