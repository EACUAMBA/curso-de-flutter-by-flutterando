//Criando o nosso widget statafull
import 'package:flutter/cupertino.dart';

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