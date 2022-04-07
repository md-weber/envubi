import 'package:envubi/authentication/onboarding_steps.dart';
import 'package:envubi/l10n/l10n.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    final localizations = AppLocalizations.of(context);
    return Material(
      child: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            OnboardingSlide(
              StepImages.stepOne,
              headlineText: localizations.domain_landing_headlineStepOne,
              bodyText: localizations.domain_landing_bodyStepOne,
            ),
            OnboardingSlide(
              StepImages.stepTwo,
              headlineText: localizations.domain_landing_headlineStepTwo,
              bodyText: localizations.domain_landing_bodyStepTwo,
            ),
            OnboardingSlide(
              StepImages.stepThree,
              headlineText: localizations.domain_landing_headlineStepThree,
              bodyText: localizations.domain_landing_bodyStepThree,
            ),
          ],
        ),
      ),
    );
  }
}
