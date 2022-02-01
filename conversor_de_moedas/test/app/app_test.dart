import 'package:conversor_de_moedas/app/controller/home_controller.dart';
import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

main(){
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  final CurrencyModel metical = CurrencyModel.getCurrencies()[0];
  final CurrencyModel  dollar = CurrencyModel.getCurrencies()[1];

  final HomeController  homeController= new HomeController(fromCurrencyModel: dollar  , toCurrencyModel: metical, fromText: fromText, toText: toText);
      
      test("deve converter de metical para dollar", (){
        fromText.text ='50.0';

        homeController.convert();

        expect(toText.value.text, '3191.5');
      });
}