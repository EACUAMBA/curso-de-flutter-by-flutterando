import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyBox extends StatelessWidget{
  final Color borderColor = Color.fromRGBO(139, 253, 190, 1);
  CurrencyModel currencyModel;
  TextEditingController text;
  Function(CurrencyModel?) onChange;

  CurrencyBox({Key? key, required this.currencyModel, required this.text, required this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton<CurrencyModel>(
              isExpanded: true,
              underline: Container(
                height: 1,
                color: borderColor
              ),
              value: currencyModel,
              items: CurrencyModel.getCurrencies().map((e) =>
               DropdownMenuItem<CurrencyModel>(
                  child: Text(e.name!),
                  value: e,
                )
              ).toList(),
              onChanged: onChange,
            ),
          ),
        ),
        Container(width: 8,),
        Expanded(
          flex: 2,
          child:
          SizedBox(
            height: 56,
            child: TextField(
              controller: text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: borderColor
                  ),
                ),
              ),

            ),
          ),
        )
      ],
    );
  }

}