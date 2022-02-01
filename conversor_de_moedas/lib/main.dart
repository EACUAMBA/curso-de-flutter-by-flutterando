
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app/views/HomeView.dart';

main(){
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView()
    );
  }
}