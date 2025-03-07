import 'package:appecommer/views/login_onboarding/signin_email_screen.dart';
import 'package:flutter/material.dart';

class VerifypassScreen extends StatefulWidget {
  const VerifypassScreen({super.key});

  @override
  State<VerifypassScreen> createState() => _VerifypassScreenState();
}

class _VerifypassScreenState extends State<VerifypassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D182A),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/image 4.png'),
                    const SizedBox(height: 30),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'We Sent you an Email to reset your password.',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity, // Đảm bảo nút chiếm toàn bộ chiều rộng
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => const SigninEmailScreen(),
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
                          'Return to Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
