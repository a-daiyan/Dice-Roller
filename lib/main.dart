import 'package:flutter/material.dart';
import 'package:rolling_dice/gradient_container.dart';

void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
            Color.fromARGB(255, 1, 135, 197),
            Color.fromARGB(255, 145, 213, 244),
        ]),
      ),
    ),
  );
}
