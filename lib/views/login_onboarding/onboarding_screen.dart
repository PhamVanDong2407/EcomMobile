
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  _OnboardingscreenState createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  @override
  void initState() {
    super.initState();
    // Delay 2 seconds and then navigate to SigninEmailScreen
    Future.delayed(const Duration(seconds: 2), () {
      context.go('/signin/email');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8E6CEF),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logoOnboard.png'),
            ],
          ),
        ),
      ),
    );
  }
}
