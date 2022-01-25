
import 'package:flutter/material.dart';

import 'home_page.dart';

class Appwidget extends StatelessWidget {
  final String titulo;

  const Appwidget({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}