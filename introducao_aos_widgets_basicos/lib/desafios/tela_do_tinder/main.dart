import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TinderLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TinderLoginState();
  }
}

class TinderLoginState extends State<TinderLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(255, 112, 88, 1),
            Color.fromRGBO(253, 42, 123, 1)
          ], begin: AlignmentDirectional(0.3, 0.7))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icon/tinder.svg',
                height: 150,
                width: 150,
              ),
              Container(
                height: 32,
              ),
              Text(
                "Location Changer",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Container(
                height: 8,
              ),
              Text(
                "Plugin app for Tinder",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              Container(
                height: 32,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(250, 50),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                  ),
                  onPressed: () {
                    print("Olá mundo!");
                  },
                  child: Text(
                    "Login with Facebook",
                    style: TextStyle(
                        color: Color.fromRGBO(253, 42, 123, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          )),
    );
  }
}
