 import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/burger_tile.dart';

// ignore: must_be_immutable
class BurgerTab extends StatelessWidget {
  //Lista de donas final
  List burgerOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName],
    ["Big Angus", "36", Colors.blue, "lib/images/burger_angus.png"],
    ["Doble meat", "45", Colors.red, "lib/images/burger_meat.png"],
    ["Big Chesse", "84", Colors.purple, "lib/images/burger_salad.png"],
    ["Original", "95", Colors.brown, "lib/images/burger_simple.png"],
    ["Meat", "36", Colors.deepOrange ,"lib/images/burger_minimeat.png"],
    ["Delux", "45", Colors.amber,"lib/images/burger_delux.png"],
    ["Vegan", "84", Colors.lime ,"lib/images/burger_vegan.png"],
    ["Hawaiana", "95", Colors.lightBlue ,"lib/images/burger_hawaiana.png"]
  ];

  BurgerTab({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
        //Opcional, ajusta la forma de los elementos
      ),
      //Cuantos elementos
      itemCount: burgerOnSale.length,
      // Se debe definir el número de elementos
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgerOnSale[index][0],
          burgerPrice: burgerOnSale[index][1],
          burgerColor: burgerOnSale[index][2],
          imageName: burgerOnSale[index][3],
        );
      },
    );
  }
}
