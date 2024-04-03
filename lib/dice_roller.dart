import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  final randomiser = Random();
  var currentDiceRoll = 2;

  void rollDice() {
    var diceRoll = randomiser.nextInt(6) + 1;
    setState((){
      currentDiceRoll = diceRoll;
    });
    
  }
  @override
  Widget build(context){
    return Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text('Roll Dice'),
          )
        ]);
  }
}