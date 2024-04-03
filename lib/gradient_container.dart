import 'package:flutter/material.dart';
import 'package:rolling_dice/dice_roller.dart';

const startAllignment = Alignment.topLeft;
const endAllignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;
 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAllignment,
          end: endAllignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
