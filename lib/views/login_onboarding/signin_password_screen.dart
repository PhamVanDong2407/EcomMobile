import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SigninPasswordScreen extends StatefulWidget {
  const SigninPasswordScreen({super.key});

  @override
  State<SigninPasswordScreen> createState() => _SigninPasswordScreenState();
}

class _SigninPasswordScreenState extends State<SigninPasswordScreen> {
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
              SizedBox(height: 123),
              TextTitle(),
              SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextForm(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
          'Sign in',
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
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xff342F3F),
            hintText: "Password",
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
              context.go('/info');
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
        const SizedBox(height: 14),
        Row(
          children: [
            const Text(
              "Forgot Password ?",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                context.go('/forgot-password');
              },
              child: const Text(
                ' Reset',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
