import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'onboarding_model.dart';
import '../theme.dart';
import '../widgets/custom_button.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  late OnboardingModel _model;

  @override
  void initState() {
    super.initState();
    _model = OnboardingModel();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/HeronFitLogotype.png', height: 48.0),
            Image.asset('assets/images/OnboardingHero.png', height: 400.0),
            Column(
              children: [
                Text(
                  'Welcome to HeronFit',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary, // Set to primary color
                  ),
                ),
                Text(
                  'Your Fitness Journey Starts Here',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary, // Set to primary color
                  ),
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  text: 'Get Started',
                ),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary, // Set to primary color
                    ),
                    children: [
                      TextSpan(
                        text: 'Log In!',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context).colorScheme.primary, // Set to primary color
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
