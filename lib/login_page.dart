import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPageWidget> {
  String email = "", password = "";

  Widget _body() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Bem vindo a'),
                Container(
                  height: 16,
                ),
                const Center(
                  child: Text(
                    'EXI - Engenharia e Comercialização de Sistemas Informáticos, Lda.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: SvgPicture.asset('https://exi.co.mz/wp-content/themes/exi/img/logo.svg'),
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
                    label: Text('Email'),
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
                    label: Text('Senha'),
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (email == "email" && password == "senha") {
                        print("Entrou!");
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print("Email ou senha incorecta.");
                      }
                    },
                    child: const Text("Entrar"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _body();
  }
}
