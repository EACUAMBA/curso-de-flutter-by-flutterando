import 'package:conversor_de_moedas/app/controller/home_controller.dart';
import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  final HomeController  homeController= new HomeController();
      
      test("deve converter de metical para dollar", (){
        homeController.fromText!.text ='63.83';
        
        homeController.convert();

        expect(homeController.toText!.value.text, '1.0');
      });
}