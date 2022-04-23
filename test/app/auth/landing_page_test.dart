import 'package:envubi/auth/landing_page.dart';
import 'package:envubi/auth/landing_page/onboarding_slide.dart';
import 'package:envubi/auth/landing_page/progress_dots.dart';
import 'package:envubi/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

const subject = MaterialApp(
  localizationsDelegates: [
    AppLocalizations.delegate,
  ],
  home: LandingPage(),
);

void main() {
  testWidgets(
      'WHEN the user opens the first page '
      'THEN he should see two button and the progress indicator dots',
      (WidgetTester tester) async {
    await tester.pumpWidget(subject);

    expect(find.byType(OnboardingSlide), findsOneWidget);
    expect(find.byType(ProgressIndicatorDot), findsNWidgets(3));
    expect(find.byType(ElevatedButton), findsNWidgets(2));
  });

  testWidgets(
      'WHEN the user swipes the Onboarding_Slides '
      'THEN the second progress indicator is active',
      (WidgetTester tester) async {
    await tester.pumpWidget(subject);

    await tester.drag(find.byType(PageView), const Offset(-500, 0));
    await tester.pumpAndSettle();

    final firstProgressDot = find.byType(ProgressIndicatorDot).at(0);
    final secondProgressDot = find.byType(ProgressIndicatorDot).at(1);
    final thirdProgressDot = find.byType(ProgressIndicatorDot).at(2);

    final sizeFirst = tester.getSize(firstProgressDot);
    final sizeSecond = tester.getSize(secondProgressDot);
    final sizeThird = tester.getSize(thirdProgressDot);

    expect(sizeFirst.width, 16, reason: 'First indicator should be inactive');
    expect(sizeSecond.width, 32, reason: 'Second indicator should be active');
    expect(sizeThird.width, 16, reason: 'Third indicator should be inactive');
  });

  testWidgets('WHEN user pressed on SignIn THEN nothing happens',
      (WidgetTester tester) async {
    await tester.pumpWidget(subject);
    await tester.tap(find.byType(ElevatedButton).at(0));
  });

  testWidgets('WHEN user pressed on Register THEN nothing happens',
      (WidgetTester tester) async {
    await tester.pumpWidget(subject);
    await tester.tap(find.byType(ElevatedButton).at(1));
  });
}
