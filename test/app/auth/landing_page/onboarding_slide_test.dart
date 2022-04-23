import 'package:envubi/auth/landing_page/onboarding_slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Display Body text, Headline and an image',
      (WidgetTester tester) async {
    const headlineText = 'Test Headline';
    const bodyText = 'Test BodyText';
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: OnboardingSlide(
          'assets/step_one.png',
          headlineText: headlineText,
          bodyText: bodyText,
        ),
      ),
    );

    final titleFinder = find.text(headlineText);
    final messageFinder = find.text(bodyText);
    final imageFinder = find.image(const AssetImage('assets/step_one.png'));

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
    expect(imageFinder, findsOneWidget);
  });
}
