import 'package:flutter/material.dart';

class StepImages {
  static String stepOne = 'assets/step_one.png';
  static String stepTwo = 'assets/step_two.png';
  static String stepThree = 'assets/step_three.png';
}

class OnboardingSlide extends StatelessWidget {
  const OnboardingSlide(
    this.stepImageAssetPath, {
    required this.headlineText,
    this.bodyText,
    Key? key,
  }) : super(key: key);

  final String stepImageAssetPath;
  final String headlineText;
  final String? bodyText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xFF493D8A))),
          ),
          child: Image.asset(
            stepImageAssetPath,
            height: 300,
          ),
        ),
        const SizedBox(height: 4 * 8),
        Text(
          headlineText,
          style: textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 2 * 8),
        if (bodyText == null || bodyText!.isEmpty)
          const SizedBox()
        else
          Text(
            bodyText!,
            style: textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
      ],
    );
  }
}
