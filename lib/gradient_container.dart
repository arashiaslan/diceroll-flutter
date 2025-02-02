import 'package:flutter/material.dart';
import 'package:testeng/roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.orange({super.key})
      : this.color1 = Colors.orange,
        this.color2 = Colors.yellow;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: Roller()
      ),
    );
  }
}
