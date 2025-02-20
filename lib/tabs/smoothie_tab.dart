import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/smoothie_tile.dart';


// ignore: must_be_immutable
class SmoothieTab extends StatelessWidget {
  //Lista de donas final
  List smoothieOnSale = [
  //[donutFlavor, donutPrice, donutColor, imageName],
  ["Lemon", "36", Colors.deepPurple,"lib/images/smoothie_lemon.png"],
  ["Watermelon", "45", Colors.lime,"lib/images/smoothie_watermelon.png"],
  ["Red fuits", "84", Colors.orange,"lib/images/smoothie_cherry.png"],
  ["Orange", "95",Colors.cyan,"lib/images/smoothie_orange.png"],
  ["CocoCoco","45",Colors.pink,"lib/images/smoothie_coco.png"],
  ["Macha","84",Colors.indigo,"lib/images/smoorhie_macha.png"],
  ["Sweet Orange","45",Colors.teal,"lib/images/smoothie_orange2.png"],
  ["Blueberry","84",Colors.blueGrey,"lib/images/smoothie_blueberry.png"] ];

SmoothieTab({super.key});
  @override Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.7,
        //Opcional, ajusta la forma de los elementos 
        ),
        //Cuantos elementos
        itemCount: smoothieOnSale.length,
        // Se debe definir el número de elementos
        itemBuilder: (context, index) {
          return SmoothieTile( smoothieFlavor: smoothieOnSale[index][0],
          smoothiePrice: smoothieOnSale[index][1],
          smoothieColor: smoothieOnSale[index][2],
          imageName: smoothieOnSale[index][3],
          );
          },
          );
          }
          }