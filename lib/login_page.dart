import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';


class LoginPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPageWidget> {
  String email = "", password = "";
  bool? _termo_e_condicoes = false;

 Future<void> _mostrarTermos_e_Condicoes() async {
   return showDialog(
       context: context,
       builder: (context){
         return AlertDialog(
           title: Text("Aceite os termos e condições aplicaveis."),
           content: Text("Tens de aceitar os termos e condicoes para poder usar o aplicativo."),

         );
       }
   );
 }

  Widget _body() {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Card(
                  color: Colors.white.withOpacity(1),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: SvgPicture.asset('assets/icon/logo.svg'),
                        ),
                        Container(
                          height: 16,
                        ),
                        TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            label: Text('Email', style: TextStyle(fontSize: 16),),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Container(
                          height: 16,
                        ),
                        TextField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text('Senha', style: TextStyle(fontSize: 16),),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Container(
                          height: 16,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (!_termo_e_condicoes!) {
                                _mostrarTermos_e_Condicoes();
                              } else {
                                print("Email ou senha incorecta.");
                                Navigator.of(context).pushNamed('/home');
                              }
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 98, 175, 1)),
                                minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),

                            ),
                            child: const Text("Entrar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),
                        Container(
                          height: 16,
                        ),
                        TextButton(onPressed: (){

                        }, child: Text("Esqueci a minha senha.", style: TextStyle(color: Colors.black.withOpacity(0.50))))

                    ],
                    ),
                  ),
                ),
                Container(height: 32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value: _termo_e_condicoes,
                      onChanged: (value){setState(() {
                    _termo_e_condicoes = value;
                  });}, fillColor: MaterialStateProperty.all(Colors.white), checkColor: Color.fromRGBO(0, 98, 175, 1),

                    ),
                  Text("Termos e condições aplicaveis.", style: TextStyle(color: Colors.white.withOpacity(0.75)),)],)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/img/background.jpg',
              fit: BoxFit.cover,
              alignment: Alignment.centerRight,
            ),
          ),
          Container(color: Colors.black.withOpacity(0.4),),
          _body()
        ],
      ),
    );
  }
}
