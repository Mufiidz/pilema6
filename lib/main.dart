import 'package:flutter/material.dart';
import 'package:pilema6/di/injection.dart';

import './screens/onboarding/onboarding_screen.dart';

void main() async {
  setupDI();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PilemA6',
      theme: ThemeData(useMaterial3: true),
      home: const OnBoardingScreen(),
    );
  }
}
