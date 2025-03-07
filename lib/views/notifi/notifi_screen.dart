import 'package:flutter/material.dart';

class NotifiScreen extends StatefulWidget {
  const NotifiScreen({super.key});

  @override
  State<NotifiScreen> createState() => _NotifiScreenState();
}

class _NotifiScreenState extends State<NotifiScreen> {
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
              SizedBox(height: 30), // Tạo khoảng cách 30px từ trên xuống
              textTitle(),
              Expanded(
                child: Center(
                  child: btnNotifi(),
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
      'Notifications',
      style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class btnNotifi extends StatefulWidget {
  const btnNotifi({super.key});

  @override
  State<btnNotifi> createState() => _btnNotifiState();
}

class _btnNotifiState extends State<btnNotifi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Đảm bảo nội dung chỉ chiếm không gian cần thiết
      children: [
        Image.asset('assets/images/bell 1.png'),
        const SizedBox(height: 30),
        const Text(
          'No Notification yet',
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
