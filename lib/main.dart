import 'package:demo/quiz.dart';
import 'package:flutter/material.dart';

void main() {
  // final myList = [1, 2, if (false) 3 else 3.5, 4];
  final myList = [1, 2, true ? 3 : 3.5, 4];

  print("myList = $myList");
  runApp(const Quiz());
}
