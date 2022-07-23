import 'package:flutter/material.dart';

import '../widgets/detalle_superior.dart';
import '../widgets/led_color.dart';
import '../widgets/pantalla_pokemon.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  // ignore: non_constant_identifier_names
  final StylePantalla = const BoxDecoration( color: Colors.grey,//Color.fromARGB(255, 153, 212, 184),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(80)),);

  final StyleCruzTop = const BoxDecoration( color: Colors.black,//Color.fromARGB(255, 153, 212, 184),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)));
  
  final StyleCruzBottom = const BoxDecoration( color: Colors.black,//Color.fromARGB(255, 153, 212, 184),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)));

  final StyleCruzLeft = const BoxDecoration( color: Colors.black,//Color.fromARGB(255, 153, 212, 184),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),topLeft: Radius.circular(5)));

  final StyleCruzRight = const BoxDecoration( color: Colors.black,//Color.fromARGB(255, 153, 212, 184),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5)));

  @override
  Widget build(BuildContext context) {final StyleCruzBottom = const BoxDecoration( color: Colors.black,//Color.fromARGB(255, 153, 212, 184),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)));
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              width: double.infinity,
              height: 100,
              child: const DetalleSuperior()
            ),
            //Pantalla
            Container(
              height: 525,
              width: 350,
              decoration: StylePantalla,
              child: Column(
                children: [
                  leds(),
                  PantallaPokemon(),
                  detalleInferior()
                ],
              ),
            ),
            //bottomContent
            Container(
              height:150,
              width:350,
              margin: const EdgeInsets.only(top:8),
              child: Row(
                children: [
                  panelDescripcion(),
                  controlCruz()
                ]
              )
            )
          ],
        ),
        color: Colors.red[800],
      ),
    );
  }

 Widget leds() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ledDeColor(Colors.redAccent, Colors.red,15),
      ledDeColor(Colors.redAccent, Colors.red,15),
    ],
  );
 }

 Widget detalleInferior() {
  return Container(
    margin: const EdgeInsets.only(left: 30, top:10, right: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ledDeColor(Colors.redAccent, Colors.black,25),
        Column(
          children: [
            Container(
              width:70,
              height:4,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),           
            ),
            Container(
              width:70,
              height:4,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),           
            ),
            Container(
              width:70,
              height:4,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),           
            ),
          ],
        )
      ]
    ),
  );
 }

 Widget panelDescripcion() {
  return Container(
    margin: const EdgeInsets.only(left: 5),
    width:200,
    height:130,
    decoration: BoxDecoration(
      // ignore: prefer_const_literals_to_create_immutables
      boxShadow: [
        const BoxShadow(color: Colors.grey, spreadRadius: 3)],
      borderRadius: BorderRadius.circular(10),
      color:const Color.fromARGB(255, 153, 212, 184),
    )
  );
 }

 Widget controlCruz() {
    return SizedBox(
      width:145,
      height:145,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width:40, height:40, decoration: StyleCruzLeft, child: Icon(Icons.keyboard_arrow_left, color:Colors.grey[800], size:35),),
                Container(color:Colors.black, width:40, height:40),
                Container(width:40, height:40, decoration: StyleCruzRight, child: Icon(Icons.keyboard_arrow_right, color:Colors.grey[800], size:35),),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 52),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( width:40, height:40, decoration:StyleCruzTop, child: Icon(Icons.keyboard_arrow_up, color:Colors.grey[800], size:35),),
                Container( width:40, height:40, color:Colors.black),
                Container( width:40, height:40, decoration:StyleCruzBottom, child: Icon(Icons.keyboard_arrow_down, color:Colors.grey[800], size:35),),
              ],
            ),
          )
        ],
      ),
    );
  }
}