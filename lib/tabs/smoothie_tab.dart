import 'package:flutter/material.dart';
import 'package:donut_app_2b_aguilar/utils/donut_tile.dart';

class SmoothieTab extends StatelessWidget {

    final Function(String, double) addToCart; // Recibe la función desde HomePage
  SmoothieTab({required this.addToCart});

  
  //lista donas
  final List donutsOnSale = [
    //[donutFlavor, donutStore, donutPrice, donotColor,imageName]
    ["mango","Krispy Kreme", "36", Colors.blue, "lib/images/mango_smoothie.png"],
    ["strawberry","Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_smoothie.png"],
    ["raspberry","Costco", "84", Colors.purple, "lib/images/raspberry_smoothie.png"],
    ["pineapple","Walmart", "95", Colors.brown, "lib/images/pineapple_smoothie.png"],
    ["mango","Krispy Kreme", "36", Colors.blue, "lib/images/mango_smoothie.png"],
    ["strawberry","Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_smoothie.png"],
    ["raspberry","Costco", "84", Colors.purple, "lib/images/raspberry_smoothie.png"],
    ["pineapple","Walmart", "95", Colors.brown, "lib/images/pineapple_smoothie.png"],
    
  ];

  @override
  Widget build(BuildContext context) {
    //WIDGET para acomodar elementos en Cuadricula 
    return GridView.builder(
      //Parametro que muestra los elementos en nuestra lista
      itemCount:donutsOnSale.length,
      padding: EdgeInsets.all(8.0),
      //Prepa 1- Organiza cómo distribuir los elementos en una cuadricula
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //Num de columnas
        childAspectRatio: 1/1.5 //Aspect ratio-proporción-ancho/alto
      ),
    itemBuilder:(context, index){
      return DonutTile(
        donutFlavor: donutsOnSale[index][0],
        donutStore:donutsOnSale[index][1],
        donutPrice: donutsOnSale[index][2],
        donutColor: donutsOnSale[index][3],
        imageName: donutsOnSale[index][4],
        onTap: () => addToCart(donutsOnSale[index][0], double.parse(donutsOnSale[index][2])),  // Llama a addToCart
      );
    },
    );
  }
}

