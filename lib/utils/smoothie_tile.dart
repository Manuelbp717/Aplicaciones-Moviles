import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {

    final String smoothieFlavor;
    final String smoothiePrice;
    final dynamic smoothieColor;
    final String imageName;

  const SmoothieTile({super.key, required this.smoothieFlavor, required this.smoothiePrice, required this.smoothieColor, required this.imageName});

    final double borderRadius = 24;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            color: smoothieColor[100],
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
                  color: smoothieColor[350],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(borderRadius)
                  )
                ),
                padding: 
                const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                child: Text('\$$smoothiePrice',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: smoothieColor[800]
                ),),
              )
            ],
          ),
          Padding(
            padding: const  EdgeInsets.symmetric(
              horizontal: 33, vertical: 11
            ),
            child: Image.asset(imageName)
            ,),
            //Tarea: Texto del sabor del producto
            Text(smoothieFlavor,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
            ),
            ),
            const SizedBox(height: 4),
            Text('Dunkins',
            style: TextStyle(
                color: Colors.grey[700]
            ),
            ),

            //Tarea: Iconos de me gusta y agregar a productos
            //const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400]),
                  Icon(
                    Icons.add,
                    color: Colors.grey[700],),
                ],
              )
            )
        ],
        )
      )
    );
  }
}