import 'package:flutter/material.dart';

import 'led_color.dart';

class DetalleSuperior extends StatelessWidget {
  const DetalleSuperior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: double.infinity,
      width:double.infinity,
      child:CustomPaint(
        painter: _FiguraPinter(),
        child: Row(
          children: [
            // Boton Azul
            Container(
              width:70,
              height:70,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                const BoxShadow(color: Colors.white, spreadRadius: 3)],
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
              ),           
            ),
            //Botones de colores
            Container(
               color: Colors.red[800],
              child: Row(
                children: [
                  ledDeColor(Colors.redAccent, Colors.red,30),
                  ledDeColor(Colors.yellowAccent, Colors.yellow,30),
                  ledDeColor(Colors.greenAccent,Colors.green,30)
                ],)         
            )
          ],
        )
      )
    );
  }

}

class _FiguraPinter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    final lapiz = Paint();

    //propiedades
    lapiz.color = Color.fromARGB(255, 10, 0, 0);
    lapiz.style = PaintingStyle.stroke;
    lapiz.strokeWidth = 3.0;

    final path = Path();
    //dibujar con el path y el lapiz
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(size.width * 0.61, size.height*0.6);
    path.lineTo(size.width, size.height*0.60);
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.6);
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);    

    canvas.drawPath(path,lapiz);
  }

    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
      return true;
    }

  }