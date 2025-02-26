import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/donut_title.dart';

// ignore: must_be_immutable
class DonutTab extends StatelessWidget {
  //Lista de donas final
  List donutsOnSale = [
  //[donutFlavor, donutPrice, donutColor, imageName],
  ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
  ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
  ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
  ["Chocolate", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ["Watermelon","45",Colors.teal,"lib/images/donut_5787028.png"],
  ["Dark","84",Colors.indigo,"lib/images/donut_6038744.png"],
  ["Maple", "84", Colors.lime ,"lib/images/donuts_10174068.png"],
  ["Vanilla", "95", Colors.lightBlue ,"lib/images/doughnut_8490692.png"] ];

  DonutTab({super.key});
  @override Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
        //Opcional, ajusta la forma de los elementos 
        ),
        //Cuantos elementos
        itemCount: donutsOnSale.length,
        // Se debe definir el número de elementos
        itemBuilder: (context, index) {
          return DonutTile( donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
          );
          },
          );
          }
          }
