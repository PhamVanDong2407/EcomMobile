import 'package:appecommer/views/home_page/detailcate_screen.dart';
import 'package:appecommer/views/home_page/detailhoddies_screen.dart';
import 'package:appecommer/views/home_page/homepage_screen.dart';
import 'package:appecommer/views/login_onboarding/onboarding-screen.dart';
import 'package:appecommer/views/notifi/notifi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotifiScreen(),
    );
  }
}
