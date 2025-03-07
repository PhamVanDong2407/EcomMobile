import 'package:flutter/material.dart';

class OderScreen extends StatefulWidget {
  const OderScreen({super.key});

  @override
  State<OderScreen> createState() => _OderScreenState();
}

class _OderScreenState extends State<OderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: SafeArea(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
