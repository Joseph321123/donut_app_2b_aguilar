import 'package:donut_app_2b_aguilar/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //const DonutTab({super.key});

  final void Function(String, double) addToCart; // ✅ Usa void Function

 DonutTab({super.key, required this.addToCart}); 

  //lista donas
  final List donutsOnSale = [
    //[donutFlavor, donutStore, donutPrice, donotColor,imageName]
    ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry","Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape","Costco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco","Walmart", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry","Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape","Costco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco","Walmart", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    
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