import 'package:demo/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // final List<Color> colorList;

  // const GradientContainer(this.colorList, {super.key});

  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: /*colorList */ [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        )),
        child: const Center(
          child: DiceRoller(),
        ),);
  }
}
