import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POKEDEX',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pokedex'),
        ),
        body: Center(
          child: Container(
            child: Text('Este es un pokedex'),
          ),
        ),
      ),
    );
  }
}