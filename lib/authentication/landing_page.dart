import 'package:envubi/authentication/onboarding_steps.dart';
import 'package:envubi/constants.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
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
                    headlineText:
                        localizations.domain_landing_headlineStepThree,
                    bodyText: localizations.domain_landing_bodyStepThree,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Spacings.small * 2),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Spacings.small * 4),
                      topRight: Radius.circular(Spacings.small * 4),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        spreadRadius: -1,
                        offset: Offset(-1, -1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Spacings.small * 2,
                          vertical: Spacings.small * 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Sign in'),
                              ),
                            ),
                            const SizedBox(width: Spacings.small),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Register'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
