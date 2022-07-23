import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(Pokedex());

class Pokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POKEDEX',
      home: HomePage()
    );
  }
}