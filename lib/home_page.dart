//Criando o nosso widget statafull
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // Retornamos o estado da tela
    return HomePageState();
  }
}

//widget statefull precisa ter um State associado, este é o state do HomePage, ele retorna um widget com o estado da tela.
class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text("Edilson Alexandre Cuamba"),
        ),
        body: new Center(
          child: new GestureDetector(
            child: new Text(count.toString(), style: new TextStyle(fontSize: 20, color: Colors.blue),),
            onTap: (){
              setState(() {
                count++;
              });
            },
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(
              Icons.add
          ),
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