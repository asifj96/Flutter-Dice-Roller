import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // List diceRollList = [
  //   "assets/images/dice_1.png",
  //   "assets/images/dice_2.png",
  //   "assets/images/dice_3.png",
  //   "assets/images/dice_4.png",
  //   "assets/images/dice_5.png",
  //   "assets/images/dice_6.png"
  // ];
  // var diceRollRandomIndex = 0;

  // var activeDiceImage = 'assets/images/dice_2.png';
  var currentDiceRoll = 3;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // var diceRoll = Random().nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice_$diceRoll.png';
      // diceRollRandomIndex = Random().nextInt(diceRollList.length);

      if (kDebugMode) {
        print('Current Dice Role =  $currentDiceRoll');
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice_$currentDiceRoll.png' /*activeDiceImage*/ /*diceRollList[diceRollRandomIndex]*/,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
