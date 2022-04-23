import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';

List<ProviderConfiguration> providerConfigs = [
  EmailLinkProviderConfiguration(
    actionCodeSettings: ActionCodeSettings(
      url: 'https://envubi-2f120.firebaseapp.com',
      handleCodeInApp: true,
      androidPackageName: 'dev.flutterexplained.envubi.dev',
      iOSBundleId: 'dev.flutterexplained.envubi.dev',
    ),
  )
];
