import 'package:appecommer/views/home_page/homepage_screen.dart';
import 'package:appecommer/views/login_onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Import Screen
import '../views/login_onboarding/signin_email_screen.dart';
import '../views/login_onboarding/signin_password_screen.dart';
import '../views/login_onboarding/signup_screen.dart';
import '../views/login_onboarding/forgot_password_screen.dart';
import '../views/login_onboarding/verify_password_screen.dart';
import '../views/login_onboarding/info_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      // onboarding_screen
      GoRoute(
        path: '/',
        name: 'onboarding',
        builder: (context, state) => const Onboardingscreen(),
      ),

      //signin_email-screen
      GoRoute(
        path: '/signin/email',
        name: 'signin_email',
        builder: (context, state) => const SigninEmailScreen(),
      ),

      // signin_password_screen
      GoRoute(
        path: '/signin/password',
        name: 'signin_password',
        builder: (context, state) => const SigninPasswordScreen(),
      ),

      // forgot_password_screen
      GoRoute(
        path: '/forgot-password',
        name: 'forgot_password',
        builder: (context, state) => const ForgotpassScreen(),
      ),

      // signup_screen
      GoRoute(
        path: '/signup',
        name: 'signup',
        builder: (context, state) => const SignupScreen(),
      ),

      // verify_password_screen
      GoRoute(
        path: '/verify-password',
        name: 'verify_password',
        builder: (context, state) => const VerifypassScreen(),
      ),

      // info_screen
      GoRoute(
        path: '/info',
        name: 'info',
        builder: (context, state) => const InfoScreen(),
      ),

      // homepage_screen
      GoRoute(
        path: '/homepage',
        name: 'homepage',
        builder: (context, state) => const HomepageScreen(),
      ),
    ],
  );
}
