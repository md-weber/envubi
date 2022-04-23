import 'package:envubi/authentication/landing_page/progress_dots.dart';
import 'package:envubi/authentication/onboarding_steps.dart';
import 'package:envubi/constants.dart';
import 'package:envubi/l10n/l10n.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  PageController controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPage = (controller.page ?? 0).round();
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Material(
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: [
                  OnboardingSlide(
                    StepImages.stepOne,
                    headlineText: localizations.auth_landing_headlineStepOne,
                    bodyText: localizations.auth_landing_bodyStepOne,
                  ),
                  OnboardingSlide(
                    StepImages.stepTwo,
                    headlineText: localizations.auth_landing_headlineStepTwo,
                    bodyText: localizations.auth_landing_bodyStepTwo,
                  ),
                  OnboardingSlide(
                    StepImages.stepThree,
                    headlineText: localizations.auth_landing_headlineStepThree,
                    bodyText: localizations.auth_landing_bodyStepThree,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Spacings.medium),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Spacings.xtraLarge),
                      topRight: Radius.circular(Spacings.xtraLarge),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        spreadRadius: -1,
                        offset: Offset(-1, -1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Spacings.small,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i <= 2; i++)
                              ProgressIndicatorDot(
                                activePageIndex: currentPage,
                                referencePageIndex: i,
                              ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Spacings.medium,
                            vertical: Spacings.medium,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    localizations.auth_landing_signIn,
                                  ),
                                ),
                              ),
                              const SizedBox(width: Spacings.small),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    localizations.auth_landing_register,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
