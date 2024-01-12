import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

import 'package:first_app/text_style.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//this is creating a custom widget
//stateless is a flutter widget one of the meta datas
class GradientContainer extends StatelessWidget {
  //declaring the constructor with a named parameter called key which references another value in key in the statelesswidget
  const GradientContainer(this.firstGrandient, this.secondGradient,
      {super.key});

  final Color firstGrandient;
  final Color secondGradient;
 
  //override is telling the flutter to override what maybe coming from stateless widgets for build
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [firstGrandient, secondGradient],
              begin: startAlignment,
              end: endAlignment)),
      child: const Center(

          //this sets it to take the entire center column but min sets it to minimize what it takes
          child: DiceRoller()
          )
    );
  }
}
