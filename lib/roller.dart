import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class Roller extends StatefulWidget {
  const Roller({super.key});
  @override
  // ignore: no_logic_in_create_state
  State<Roller> createState() {
    return _RollerState();
  }
}

class _RollerState extends State<Roller> {
  var currentDice = 6;

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-images/dice-$currentDice.png', width: 200),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                backgroundColor: Colors.amber.shade800,
                textStyle: const TextStyle(fontSize: 20)),
            child: Text("Roll The Dice!")),
      ],
    );
  }
}
