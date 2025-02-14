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
      iconPath: 'lib/icons/donut.png',
    ),
    //burger
    const MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    //smothie
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
    //pancake
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    //pizza
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
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
            TabBar(tabs: myTabs),

            //Tap bar view
	          Expanded(child:TabBarView(
            children: [
            DonutTab(),BurgerTab(),SmoothieTab(),PanCakeTab(),PizzaTab()]
            )),
            //Carrito
          ],
        ),
      ),
    );
  }
}
