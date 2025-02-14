import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {

    final String donutFlavor;
    final String donutPrice;
    final dynamic donutColor;
    final String imageName;

  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, required this.donutColor, required this.imageName});

    final double borderRadius = 24;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            color: donutColor[100],
            borderRadius: BorderRadius.circular(borderRadius)
          ),
        child: Column(
        //Precio
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: donutColor[350],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(borderRadius)
                  )
                ),
                padding: 
                const EdgeInsets.symmetric(vertical: 8,horizontal: 18),
                child: Text('\$$donutPrice',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: donutColor[800]
                ),),
              )
            ],
          ),
          Padding(
            padding: const  EdgeInsets.symmetric(
              horizontal: 40, vertical: 12
            ),
            child: Image.asset(imageName)
            ,)
            //Tarea: Texto del sabor del producto

            //Tarea: Iconos de me gusta y agregar a productos
        ],
        )
      )
    );
  }
}