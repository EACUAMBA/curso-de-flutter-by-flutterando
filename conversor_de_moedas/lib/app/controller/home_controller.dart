import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';

class HomeController{

  List<CurrencyModel>? currencies;
 CurrencyModel? fromCurrencyModel;
  CurrencyModel? toCurrencyModel;
  TextEditingController? toText;
  TextEditingController? fromText;



  HomeController(){
    fromText = TextEditingController();
    toText = TextEditingController();
    fromCurrencyModel = findAll()[0];
    toCurrencyModel = findAll()[1];
  }

  List<CurrencyModel> findAll(){
    return CurrencyModel.getCurrencies();
  }

  void convert(){
    String fromText = this.fromText!.value.text;

    double fromValue = double.tryParse(fromText.replaceAll(',', '.')) ?? 1.0 ;
    double toValue = _newValue(toCurrencyModel!, fromValue);
    
    toText!.text= toValue.toString();
  }

  double _newValue(CurrencyModel to, double value){

    switch(to.name) {
      case "Metical":
        return value * fromCurrencyModel!.metical!;
        break;
      case "Euro":
        return value * fromCurrencyModel!.euro!;
        break;
      case "Dollar":
        return value * fromCurrencyModel!.dollar!;
        break;
      case "Rand":
        return value * fromCurrencyModel!.rand!;
        break;
      default:
        return 0.0;
    }

  }


}