import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/burger_tile.dart';

// ignore: must_be_immutable
class BurgerTab extends StatelessWidget {
  //Lista de donas final
  List burgerOnSale = [
  //[donutFlavor, donutPrice, donutColor, imageName],
  ["Big Burger", "36", Colors.blue],
  ["Vegan Burger", "45", Colors.red],
  ["Burger", "84", Colors.purple],
  ["Angus Burger", "95", Colors.brown] ];

BurgerTab({super.key});
  @override Widget build(BuildContext context) {
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
          return BurgerTile( donutFlavor: burgerOnSale[index][0],
          donutPrice: burgerOnSale[index][1],
          donutColor: burgerOnSale[index][2],
          );
          },
          );
          }
          }