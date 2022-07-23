import 'package:flutter/material.dart';

class PantallaPokemon extends StatefulWidget {
  PantallaPokemon({Key? key}) : super(key: key);

  @override
  State<PantallaPokemon> createState() => _PantallaPokemonState();
}

class _PantallaPokemonState extends State<PantallaPokemon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 425,
      width: 330,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 153, 212, 184),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}