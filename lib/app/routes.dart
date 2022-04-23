import 'package:envubi/auth/provider_configs.dart';
import 'package:envubi/quiz/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfire_ui/auth.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/sign-in': (context) => SignInScreen(
        providerConfigs: providerConfigs,
        actions: [
          AuthStateChangeAction<SignedIn>((context, _) {
            Navigator.of(context).pushReplacementNamed('/quiz');
          }),
        ],
      ),
  '/profile': (context) => ProfileScreen(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        actions: [
          SignedOutAction((context) {
            Navigator.of(context).pushReplacementNamed('/sign-in');
          }),
          Cancel((context) {
            Navigator.of(context).pushReplacementNamed('./quiz');
          })
        ],
        providerConfigs: providerConfigs,
      ),
  '/quiz': (context) => const QuizPage()
};
