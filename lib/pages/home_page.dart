//stufl
import 'package:donut_app_2b_aguilar/tabs/burger_tab.dart';
import 'package:donut_app_2b_aguilar/tabs/donut_tab.dart';
import 'package:donut_app_2b_aguilar/tabs/pancakes_tab.dart';
import 'package:donut_app_2b_aguilar/tabs/pizza_tab.dart';
import 'package:donut_app_2b_aguilar/tabs/smoothie_tab.dart';
import 'package:donut_app_2b_aguilar/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donutab
    MyTab(iconPath: 'lib/icons/donut.png',),
    //burguertab
    MyTab(iconPath: 'lib/icons/burger.png',),
    //smooothietab
    MyTab(iconPath: 'lib/icons/smoothie.png',),
    //pancaketab
    MyTab(iconPath: 'lib/icons/pancakes.png',),
    //pizzatab
    MyTab(iconPath: 'lib/icons/pizza.png',),
    ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //icono izquierdo
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
            ),
            //icono derecho
            actions: [Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )],
        ),
        body: Column(
          children: [
            //texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(
                    fontSize: 32
                  )),
                  Text("Eat", style: TextStyle(
                    //tamaño de letra
                    fontSize: 32,
                    //texto en negritas
                    fontWeight: FontWeight.bold,
                    //subrayado
                    decoration: TextDecoration.underline
                  ))
                ],
              ),
            ),
            //tabbar (Barra de pestañas)
            TabBar(tabs: myTabs),
            //tabbarview (Contenido de pestañas)
            Expanded(
              child: TabBarView(children: [
              DonutTab(),
              BurgerTab(),
              SmoothieTab(),
              PancakesTab(),
              PizzaTab()
              
              ]),
            ),

            //carrito
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                //poner los elementos en los extremos de la fila
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 28),
                  child: Column(
                    //alinearlo a la izquierda
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('2 Items | \$45', style: TextStyle(fontSize: 18,
                      //negritas
                      fontWeight: FontWeight.bold),
                      ),
                      Text("Delivery charges Included",
                        style: TextStyle(fontSize: 12),
                      ),

                    ],
                  )
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.pink,
                    padding: EdgeInsets.symmetric( 
                      horizontal: 24,
                      vertical: 12)), 
                    child: Text('View Cart', 
                    style: TextStyle(color: Colors.white)),),
                ],
              ),
            ),
      
          ],)
      ),
    );
  }
}