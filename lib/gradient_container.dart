import 'package:demo/common/app_strings.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = const Color(0xFF4527A0),
        color2 = const Color(0xFF4527A0);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(AppStrings.quizLogoPath, width: 200),
              const SizedBox(height: 40),
              const Text(AppStrings.learnFlutterTheFunWay,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                child: const Text(AppStrings.startQuiz),
              )
            ],
          ),
        ));
  }
}

void startQuiz() {}
