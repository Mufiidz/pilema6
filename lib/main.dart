import 'package:flutter/material.dart';
import 'package:pilema6/di/injection.dart';

import './screens/onboarding/onboarding_screen.dart';

void main() async {
  setupDI();
  runApp(
    const MaterialApp(
      home: OnBoardingScreen(),
    ),
  );
}
