import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier{
  bool isDarkTheme = false;
  //singleton - sempre vou receber está instancia
  static AppController instance = AppController();

  void changeTheme(){
    isDarkTheme = !isDarkTheme;

    //Vai notificar quem estiver escutando, um observer vai ser notificado por este observable
    notifyListeners();
  }


}