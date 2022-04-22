import 'package:envubi/constants.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorDot extends StatelessWidget {
  const ProgressIndicatorDot({required this.activePageIndex, required this.referencePageIndex, Key? key})
      : super(key: key);

  final int activePageIndex;
  final int referencePageIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: Spacings.small,
      width: activePageIndex == referencePageIndex ? Spacings.large : Spacings.small,
      duration: const Duration(milliseconds: 150),
      color: Colors.black,
    );
  }
}
