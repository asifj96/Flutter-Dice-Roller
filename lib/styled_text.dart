import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;
  @override
  Widget build(context) {
    return Text(
        style:const TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        text);
  }
}
