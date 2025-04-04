import 'package:flutter/material.dart';
import 'package:donut_app_2b_aguilar/common/color_extension.dart';

enum RoundButtonType {primary, secondary}

class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;

  const RoundButton(
    {super.key, 
  required this.title, 
  this.type = RoundButtonType.primary, 
  required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal:20),
      
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.maxFinite, 
        elevation: 0,
        color: type == RoundButtonType.primary ? TColor.primary : TColor.tertiary, //Fondo blanco, letras negras
        height: 60,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),

        child: Text(
          title,
          style: TextStyle(
            color: type == RoundButtonType.primary ? Colors.white : TColor.primaryText, //Fondo morado letras blancas
            fontSize: 14,
            fontWeight: FontWeight.w600,

          ),
        ),
      ),
    );
  }
}