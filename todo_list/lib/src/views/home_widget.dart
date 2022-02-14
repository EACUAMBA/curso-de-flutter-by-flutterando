import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tick'),
        ),
        backgroundColor: Colors.amber,
        body: ListView.builder(
          itemCount: 20,

            itemBuilder: ((context, index) {
              return ListTile(title: Text('Olá ListBuilderX $index'));
            })
        ),
      ),
    );
  }
}