import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/splash_screen_widget.dart';
import 'screens/onboarding_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HeronFit',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreenWidget(),
        '/onboarding': (context) => const OnboardingWidget(),
        // '/login': (context) => const LoginScreen(), // Add login screen later
      },
    );
  }
}
