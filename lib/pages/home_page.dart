import 'package:flutter/material.dart';
import 'package:flutter_application_2/tabs/burguer_tab.dart';
import 'package:flutter_application_2/tabs/donut_tab.dart';
import 'package:flutter_application_2/tabs/pancake_tab.dart';
import 'package:flutter_application_2/tabs/pizza_tab.dart';
import 'package:flutter_application_2/tabs/smoothie_tab.dart';
import '../utils/Mytab.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(
      iconPath: 'lib/icons/donut.png', tabName: 'Donuts',
    ),
    //burger
    const MyTab(
      iconPath: 'lib/icons/burger.png', tabName: 'Burger',
    ),
    //smothie
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',tabName: 'Smoothie',
    ),
    //pancake
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',tabName: 'Pancakes',
    ),
    //pizza
    const MyTab(
      iconPath: 'lib/icons/pizza.png',tabName: 'Pizza',
    ),
  ];
  //donut tab

  //burger tab
  //smothie tab
  //pancake tab
  //pizza tab
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              //Le da pading a la derecha
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            )
          ],
        ),
        body: Column(
          //a qui puso el maestro constante
          children: [
            //Texto "I want to eat"
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    "eat",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            //Tab bar
            TabBar(tabs: myTabs,
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.grey,),

            //Tap bar view
	          Expanded(child:TabBarView(
            children: [
            DonutTab(),BurgerTab(),SmoothieTab(),PanCakeTab(),PizzaTab()]
            )),
            //Carrito
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 Items | \$45",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text("",
                      style: TextStyle(
                      fontSize: 12,
                      ),)
                    ],
                  ),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                    ),
                   child: const Text("View Cart",
                   style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                   ),
                   ),
                   )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
