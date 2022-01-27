//Criando o nosso widget statafull
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // Retornamos o estado actual da tela
    return HomePageState();
  }
}

//widget statefull precisa ter um State associado, este é o state do HomePage, ele retorna um widget com o estado da tela.
class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //O scaffold é um widget que tem uma aparencia bonita. ele e o Material funcionam do mesmo jeito, a diferença é que o Scaffold já é completo.
      child:  Scaffold(
        appBar:  AppBar(
          centerTitle: true,
          title:  const Text("Edilson Alexandre Cuamba"),
        ),
        body:  Container(
          width: 200,
          height: 200,
          color: Colors.blueAccent,
          //O align é um widget multi render, ele não usa o reder antigo para renderizar, vai usar outro, existem muitos outros que também implementam multirender.
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ),
        floatingActionButton:  FloatingActionButton(
          child:  const Icon(Icons.add),
          onPressed: (){
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}

//O Scaffold() é mais completo que o Material(),