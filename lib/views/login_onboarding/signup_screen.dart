import 'package:flutter/material.dart';

import 'forgotpass_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              SizedBox(height: 20),
              textTitle(),
              SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      textForm(),
                      SizedBox(height: 30),
                      btnSignup(),
                      SizedBox(height: 30),
                      textBottom(),
                    ],
                  ),
                ),
              )
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
        // Xử lý khi nhấn nút (ví dụ: quay lại màn hình trước)
        Navigator.pop(context);
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

class textTitle extends StatelessWidget {
  const textTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Create Account',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class textForm extends StatefulWidget {
  const textForm({super.key});

  @override
  State<textForm> createState() => _textFormState();
}

class _textFormState extends State<textForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xff342F3F),
            hintText: "Firstname",
            hintStyle: const TextStyle(color: Colors.white70),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xff342F3F),
            hintText: "Lastname",
            hintStyle: const TextStyle(color: Colors.white70),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xff342F3F),
            hintText: "Email Address",
            hintStyle: const TextStyle(color: Colors.white70),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          ),
        ),
        const SizedBox(height: 16),
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
      ],
    );
  }
}

class btnSignup extends StatefulWidget {
  const btnSignup({super.key});

  @override
  State<btnSignup> createState() => _btnSignupState();
}

class _btnSignupState extends State<btnSignup> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity, // Đảm bảo nút chiếm toàn bộ chiều rộng
          child: ElevatedButton(
            onPressed: () {},
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

class textBottom extends StatelessWidget {
  const textBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Forgot Password ?",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const ForgotpassScreen(),
              ),
            );
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
    );
  }
}
