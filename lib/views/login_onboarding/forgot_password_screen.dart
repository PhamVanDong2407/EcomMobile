import 'package:appecommer/views/login_onboarding/verify_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotpassScreen extends StatefulWidget {
  const ForgotpassScreen({super.key});

  @override
  State<ForgotpassScreen> createState() => _ForgotpassScreenState();
}

class _ForgotpassScreenState extends State<ForgotpassScreen> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 65),
              btnBack(),
              SizedBox(height: 30),
              TextTitle(),
              SizedBox(height: 30),
              TextForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class btnBack extends StatelessWidget {
  const btnBack({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.go('/signin/password');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff342F3F),
        shape: const CircleBorder(), // Tạo hình tròn
        padding: const EdgeInsets.all(12), // Kích thước padding để nút tròn vừa phải
      ),
      child: Image.asset(
        'assets/images/arrowleft2.png', // Hình ảnh mũi tên
        width: 24, // Kích thước hình ảnh (có thể điều chỉnh)
        height: 24,
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  const TextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ],
    );
  }
}

class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xff342F3F),
            hintText: "Enter email address",
            hintStyle: const TextStyle(color: Colors.white70),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          ),
        ),
        const SizedBox(height: 16),
        // Đặt nút vào trong Container với chiều rộng bằng với TextField
        SizedBox(
          width: double.infinity, // Đảm bảo nút chiếm toàn bộ chiều rộng
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const VerifypassScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff8E6CEF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Bo tròn góc với bán kính 30
              ),
              padding: const EdgeInsets.symmetric(vertical: 15), // Tăng chiều cao thêm 10
            ),
            child: const Text(
              'Continue',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
