//Criando o nosso widget statafull
import 'package:curso_de_flutter_by_fluterrando/app_controller.dart';
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
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName:Text("Edilson Alexandre Cuamba") ,
                accountEmail: Text("Engenheiro de Software"),
                currentAccountPicture: ClipOval(
                  child: Image.network('https://media-exp1.licdn.com/dms/image/C4D03AQHorgygUskcSQ/profile-displayphoto-shrink_200_200/0/1625686861244?e=1648684800&v=beta&t=JgCay-z5oVKWVhTwvcyDWIupK5r9RzhL56jgn9UYofs'),
                  //borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.email_outlined),
                title: Text("Mensagens"),
                subtitle: Text("Veja a sua lista de mensagens"),
                trailing:  Icon(Icons.arrow_drop_down),
              ),
              const ListTile(
                leading: Icon(Icons.email_outlined),
                title: Text("Nova mensagem.."),
                subtitle: Text("Envie uma mensagem para um novo contacto."),
              ),
              const ListTile(
                leading: Icon(Icons.work_outline_outlined),
                title: Text("Tarefas"),
                subtitle: Text("Veja as tarefas que deve realizar."),
              )

            ],
          ),
        ),
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 98, 175, 1),
          centerTitle: true,
          title: const Text("Actividades"),
          actions: [DarkThemeSwitch()],
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 16, height: 16, color: Colors.blueAccent),
              SizedBox(
                  width: 400 - 72,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [Text("Contador: $count"), DarkThemeSwitch(),
                      Align(child: Container(width: 100, height: 100, color: Colors.blueAccent),),
                      Align(child: Container(width: 100, height: 100, color: Colors.deepPurple)),
                      Align(child: Container(width: 100, height: 100, color: Colors.blueAccent),),
                      Align(child: Container(width: 100, height: 100, color: Colors.deepPurple)),
                      Align(child: Container(width: 100, height: 100, color: Colors.blueAccent),),
                      Align(child: Container(width: 100, height: 100, color: Colors.deepPurple)),
                      Align(child: Container(width: 100, height: 100, color: Colors.blueAccent),),
                      Align(child: Container(width: 100, height: 100, color: Colors.deepPurple)),


                    ],
                  )
              ),
              Container(width: 16, height: 16, color: Colors.blueAccent),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}

class DarkThemeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
      value: AppController.instance.isDarkTheme,
    );
  }
}
//O Scaffold() é mais completo que o Material(),
