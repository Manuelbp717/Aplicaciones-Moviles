import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final dynamic pizzaColor;
  final String imageName;

  const PizzaTile(
      {super.key,
      required this.pizzaFlavor,
      required this.pizzaPrice,
      required this.pizzaColor,
      required this.imageName});

  final double borderRadius = 24;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
            decoration: BoxDecoration(
                color: pizzaColor[100],
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Column(
              //Precio
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: pizzaColor[350],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(borderRadius))),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Text(
                        '\$$pizzaPrice',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: pizzaColor[800]),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 11),
                  child: Image.asset(imageName),
                ),
                //Tarea: Texto del sabor del producto
                Text(
                  pizzaFlavor,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Dunkins',
                  style: TextStyle(color: Colors.grey[700]),
                ),

                //Tarea: Iconos de me gusta y agregar a productos
                //const SizedBox(height: 12),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite, color: Colors.pink[400]),
                        Icon(
                          Icons.add,
                          color: Colors.grey[700],
                        ),
                      ],
                    ))
              ],
            )));
  }
}
