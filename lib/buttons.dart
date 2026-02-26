import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Mybutton extends StatelessWidget{
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  Mybutton({
    required this.color,
    required this.textColor,
    required this.buttonText,
    required this.buttonTapped
  });

  @override
  Widget build(BuildContext context){

    return GestureDetector(
      onTap:buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius:BorderRadius.circular(20),
          child:Container(
              color:color,
              child:Center(
                child:Text(buttonText,
                style:TextStyle(
                  fontSize:20,
                  color:textColor,
                )),
              )
          ),
        ),
      ),
    );
  }
}