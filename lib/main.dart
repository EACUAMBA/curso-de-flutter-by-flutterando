import 'dart:developer';

import 'package:flutter/material.dart';

//Metodo principal da aplicação, o primeiro a rodar.
main() {
  //Este metodo é do flutter, ele é utilizado para iniciar a nossa aplicação, como parametro ele precisa de uma widget.
  //Um widgets é um estado de tela, é uma classe que estende um widget. Entenda como conponent.
  //Nós vamos colocar widgets sobre widgets e assim formaremos de uma forma declarativa a nossa aplicação.
  //Vamos usar widgets especificos para fazer coisas eespecificas, nesse formatode child: widget

  //Temos dois tipos de widgets, stateless(não muda de estado) e statefull(Muda de estado)
  runApp(const Appwidget(
    titulo: "Fluterando",
  ));
}

class Appwidget extends StatelessWidget {
  final String titulo;

  const Appwidget({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}

//Criando o nosso widget statafull
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // Retornamos o estado da tela
    return HomePageState();
  }
}

//Todo widget statefull precisa ter um State associado, este é o state do HomePage, ele retorna um widget com o estado da tela. 
class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: GestureDetector(
              child: Text("Fluterrando $count"),
              onTap: () {
                //Usado para dizer ao motor que ele deve rebuild o widget e agora com está nova variavel actualizada.
                setState(() {
                  count += 1;
                });
              }),
              ),
    );
  }
}
