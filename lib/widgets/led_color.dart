import 'package:flutter/material.dart';

  Widget ledDeColor(Color color1, Color color2, double size) {
    return Container(
      width:size,
      height:size,
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        boxShadow: [
        BoxShadow(color: color2, spreadRadius: 3)],
          color: color1,
          borderRadius: BorderRadius.circular(100),
        ),  
    );
  }
