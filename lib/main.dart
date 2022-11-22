import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:referral_tracker/routes.dart';
import 'package:referral_tracker/screens/login_screen.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ReferralTrackerApp());
}

class ReferralTrackerApp extends StatelessWidget {
  const ReferralTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LogInScreen.id,
      routes: routes,
    );
  }
}
