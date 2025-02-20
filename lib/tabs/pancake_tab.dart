import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/pancake_tile.dart';

// ignore: must_be_immutable
class PanCakeTab extends StatelessWidget {
  //Lista de donas final
  List pancakeOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName],
    ["Blueberry", "36", Colors.deepOrange ,"lib/images/pancakes_blueberry.png"],
    ["Chocolate", "45", Colors.amber,"lib/images/pancakes_chololate.png"],
    ["Maple", "84", Colors.lime ,"lib/images/pancakes_maple.png"],
    ["Vanilla", "95", Colors.lightBlue ,"lib/images/pancakes_vanilla.png"]
  ];

  PanCakeTab({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
        //Opcional, ajusta la forma de los elementos
      ),
      //Cuantos elementos
      itemCount: pancakeOnSale.length,
      // Se debe definir el número de elementos
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakePrice: pancakeOnSale[index][1],
          pancakeColor: pancakeOnSale[index][2],
          imageName: pancakeOnSale[index][3],
        );
      },
    );
  }
}
