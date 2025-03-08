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
      backgroundColor: Color(0xff1D182A),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              textTitle(),
              Expanded(
                child: Center(
                  child: btnOder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class textTitle extends StatelessWidget {
  const textTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Oders',
      style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class btnOder extends StatefulWidget {
  const btnOder({super.key});

  @override
  State<btnOder> createState() => _btnOderState();
}

class _btnOderState extends State<btnOder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Đảm bảo nội dung chỉ chiếm không gian cần thiết
      children: [
        Image.asset('assets/images/check-out 1.png'),
        const SizedBox(height: 30),
        const Text(
          'No Orders yet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff8E6CEF),
            minimumSize: const Size(200, 50),
          ),
          child: const Text(
            'Explore Categories',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
