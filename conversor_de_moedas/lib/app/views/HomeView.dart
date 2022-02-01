import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:conversor_de_moedas/app/controller/home_controller.dart';
import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  HomeController? homeController;
  HomeView(){
    homeController = HomeController();
  }

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  _HomeViewState();

  final Color mainColor = Color.fromRGBO(139, 253, 190, 1);

  final Color textDarkColor = Color.fromRGBO(0, 51, 27, 1);

  final Color backgroundColor = Color.fromRGBO(0, 51, 27, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/currency-exchange.svg',
                  width: 200,
                  height: 200,
                ),
                Container(height: 32,),
                CurrencyBox(currencyModel: this.widget.homeController!.fromCurrencyModel!, text: this.widget.homeController!.fromText!, onChange: (value){setState(() {
                  setState(() {
                    this.widget.homeController!.fromCurrencyModel= value!;
                  });
                });},),
                CurrencyBox(text: this.widget.homeController!
                  .toText!, currencyModel: widget.homeController!.toCurrencyModel!,
                  onChange: (value){
                  setState(() {
                    this.widget.homeController!.toCurrencyModel= value!;
                  });
                },),
                Container(height: 32,),
                ElevatedButton(onPressed: () {
                  setState(() {
                    this.widget.homeController!.convert();
                  });
                }, child: Text("Fazer Cambio", style: TextStyle(color: textDarkColor),), style: ElevatedButton.styleFrom(
                  primary: mainColor,
                  fixedSize: Size(200, 50),
                  elevation: 5,
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
