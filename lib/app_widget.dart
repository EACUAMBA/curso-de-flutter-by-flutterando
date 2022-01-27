
import 'package:curso_de_flutter_by_fluterrando/app_controllerr.dart';
import 'package:curso_de_flutter_by_fluterrando/login_page.dart';
import 'package:flutter/material.dart';


class Appwidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
              primaryColor: Colors.blue,
              brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light,
          ),
          home: LoginPageWidget(),
          debugShowCheckedModeBanner: true,
        );
      },

    );
  }
}