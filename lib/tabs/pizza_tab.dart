import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/pizza_tile.dart';

// ignore: must_be_immutable
class PizzaTab extends StatelessWidget {
  //Lista de donas final
  List pizzaOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName],
    ["Peperoni","36", Colors.deepOrange,"lib/images/pizza_peperoni.png"],
    ["Meatlovers","45",Colors.teal,"lib/images/pizza_3meat.png"],
    ["Italian","84",Colors.indigo,"lib/images/pizza_italian.png"],
    ["Sea","95",Colors.lightGreen,"lib/images/pizza_sea.png"],
    ["Vegan","95",Colors.lightBlue,"lib/images/pizza_salad.png"],
    ["Salami","95",Colors.amber,"lib/images/pizza_salami.png"],
    ["Jamon","95",Colors.lime,"lib/images/pizza_salchica.png"],
    ["Cheese","95",Colors.red,"lib/images/pizza_cheese.png"],
  ];

  PizzaTab({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
        //Opcional, ajusta la forma de los elementos
      ),
      //Cuantos elementos
      itemCount: pizzaOnSale.length,
      // Se debe definir el número de elementos
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaColor: pizzaOnSale[index][2],
          imageName: pizzaOnSale[index][3],
        );
      },
    );
  }
}
