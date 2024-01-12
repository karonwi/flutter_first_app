import 'package:flutter/material.dart';
import 'dart:math';

//final used once ,but not exactly like const
final randomizer = Random();

//Using stateful widgets because this dice roller requires that the state of the
//application changes
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override

  //State is the type used to quote all the dynamic stateful implementation
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//this is implementing the similtude of private methods flutter requires that when defining
//a stateful widget you should have this private class included and start with an underscore
class _DiceRollerState extends State<DiceRoller> {
  //var activeImageDice = "assets/images/dice-1.png";
  var currentDiceNumber;
  void rollDice() {
    //without this setSTate all the stuffs wont work
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1;
      print(currentDiceNumber);
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$currentDiceNumber.png", width: 200),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll the dice!!"))
      ],
    );
  }
}
