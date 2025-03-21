import 'package:flutter/material.dart';
import 'package:donut_app_2b_aguilar/utils/donut_tile.dart';
class PizzaTab extends StatelessWidget {
  final List donutsOnsale =[
    //[donutFlavor, donutStore, donutPrice, donotColor,imageName]
    ["meat lovers","Krispy Kreme", "36", Colors.blue, "lib/images/meat_lovers_pizza.png"],
    ["veggie","Dunkin Donuts", "45", Colors.red, "lib/images/veggie_pizza.png"],
    ["supreme","Costco", "84", Colors.purple, "lib/images/supreme_pizza.png"],
    ["pepperoni","Walmart", "95", Colors.brown, "lib/images/pepperoni_pizza.png"],
    ["meat lovers","Krispy Kreme", "36", Colors.blue, "lib/images/meat_lovers_pizza.png"],
    ["veggie","Dunkin Donuts", "45", Colors.red, "lib/images/veggie_pizza.png"],
    ["supreme","Costco", "84", Colors.purple, "lib/images/supreme_pizza.png"],
    ["pepperoni","Walmart", "95", Colors.brown, "lib/images/pepperoni_pizza.png"],
    
  ];
  final Function(double) onAddToCart; // Recibe la función para agregar al carrito

  PizzaTab({super.key, required this.onAddToCart}); // Constructor que recibe la función


  @override
  Widget build(BuildContext context) {
    //Para acomodar ellementos en cuadricula //GridView
    return  GridView.builder(
      // cuantos elementos tengo
      // elementos en nuestra lista //itemCount
      itemCount: donutsOnsale.length,
      padding: const EdgeInsets.all(8.0),
      //prepa 1: organiza como distribuir elementos en la cuadricula //gridDelegate
      // sliver permite crear listas y scrolls eficientes con efectos personalizados y optimizados //sliver
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //numero de columnas //crossAxisCount
        crossAxisCount: 2,
        //relacion de aspecto (proporcion)
        childAspectRatio: 1/1.3
        ),
      itemBuilder: (context, index){
        return DonutTile(
          donutFlavor: donutsOnsale[index][0],
          donutStore: donutsOnsale [index][1],
          donutPrice: donutsOnsale[index][2],
          donutColor: donutsOnsale[index][3],
          imageName: donutsOnsale[index][4],
          onAddToCart: onAddToCart, // Pasar la función para agregar al carrito
        );
      },
    );
  }
}