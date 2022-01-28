
import 'package:curso_de_flutter_by_fluterrando/app_controller.dart';
import 'package:curso_de_flutter_by_fluterrando/desafios/tela_do_tinder/main.dart';
import 'package:curso_de_flutter_by_fluterrando/home_page.dart';
import 'package:curso_de_flutter_by_fluterrando/login_page.dart';
import 'package:flutter/material.dart';


class Appwidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //AnimatedBuilder é um observer e esta atendo ao sinal do Observable app_controller, assim que o app_controller notificar este builder, ele vai renderizar novamente a tela.
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
              primaryColor: Colors.blue,
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/' : (context)=> LoginPageWidget(),
            '/home': (context)=> HomePage(),
            '/tinder-login': (context)=> TinderLogin(),
          },
          debugShowCheckedModeBanner: true,
        );
      },

    );
  }
}