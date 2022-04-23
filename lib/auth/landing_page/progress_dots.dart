import 'package:envubi/constants.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorDot extends StatelessWidget {
  const ProgressIndicatorDot({
    required this.activePageIndex,
    required this.referencePageIndex,
    Key? key,
  }) : super(key: key);

  final int activePageIndex;
  final int referencePageIndex;

  @override
  Widget build(BuildContext context) {
    final isActive = activePageIndex == referencePageIndex;

    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: Spacings.xtraSmall),
      height: Spacings.small,
      width: isActive ? Spacings.large : Spacings.small,
      duration: Timings.fast,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isActive ? const Color(0xFF453987) : const Color(0xFFB4B0CE),
      ),
    );
  }
}
