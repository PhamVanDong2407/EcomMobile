import 'package:appecommer/views/login_onboarding/signin_password_screen.dart';
import 'package:appecommer/views/login_onboarding/signup_screen.dart';
import 'package:flutter/material.dart';

class SigninEmailScreen extends StatefulWidget {
  const SigninEmailScreen({super.key});

  @override
  State<SigninEmailScreen> createState() => _SigninEmailScreenState();
}

class _SigninEmailScreenState extends State<SigninEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1D182A),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 123),
              TextTitle(),
              SizedBox(height: 30),
              Expanded(
                // Sử dụng Expanded để mở rộng không gian cho TextField
                child: SingleChildScrollView(
                  // Thêm SingleChildScrollView để tránh tràn màn hình
                  child: Column(
                    children: const [
                      TextForm(),
                      SizedBox(height: 70),
                      btnSignin(),
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
        // Đặt nút vào trong Container với chiều rộng bằng với TextField
        SizedBox(
          width: double.infinity, // Đảm bảo nút chiếm toàn bộ chiều rộng
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SigninPasswordScreen(),
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
        const SizedBox(height: 14),
        Row(
          children: [
            const Text(
              "Don't have an Account ?",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SignupScreen(),
                  ),
                );
              },
              child: const Text(
                ' Create One',
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

class btnSignin extends StatefulWidget {
  const btnSignin({super.key});

  @override
  State<btnSignin> createState() => _btnSigninState();
}

class _btnSigninState extends State<btnSignin> {
  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình để điều chỉnh kích thước nút linh hoạt
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Căn giữa cột
      children: [
        // Nút Continue with Apple
        ElevatedButton(
          onPressed: () {
            // Xử lý khi nhấn nút Apple
            print("Continue with Apple pressed");
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0XFF342F3F),
            // Màu nền nút
            minimumSize: Size(screenWidth * 0.8, 50),
            // Kích thước nút linh hoạt theo 80% chiều rộng màn hình
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // Bo góc
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16), // Thêm padding ngang để cân đối
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Căn giữa nội dung trong Row
            children: [
              Image.asset(
                'assets/images/Apple svg.png', // Đường dẫn đến logo Apple
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 12), // Giảm khoảng cách giữa logo và text để cân đối
              const Text(
                'Continue with Apple',
                style: TextStyle(
                  fontSize: 16, // Tăng kích thước chữ để dễ đọc hơn
                  fontWeight: FontWeight.normal, // Chữ thường thay vì bold để trông tự nhiên hơn
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Khoảng cách giữa các nút

        // Nút Continue with Google
        ElevatedButton(
          onPressed: () {
            // Xử lý khi nhấn nút Google
            print("Continue with Google pressed");
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0XFF342F3F),
            // Màu nền nút
            minimumSize: Size(screenWidth * 0.8, 50),
            // Kích thước nút linh hoạt theo 80% chiều rộng màn hình
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16), // Thêm padding ngang để cân đối
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Căn giữa nội dung trong Row
            children: [
              Image.asset(
                'assets/images/Google - png 0.png', // Đường dẫn đến logo Google
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 12), // Giảm khoảng cách giữa logo và text
              const Text(
                'Continue with Google',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        // Nút Continue with Facebook
        ElevatedButton(
          onPressed: () {
            // Xử lý khi nhấn nút Facebook
            print("Continue with Facebook pressed");
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0XFF342F3F),
            // Màu nền nút
            minimumSize: Size(screenWidth * 0.8, 50),
            // Kích thước nút linh hoạt theo 80% chiều rộng màn hình
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16), // Thêm padding ngang để cân đối
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Căn giữa nội dung trong Row
            children: [
              Image.asset(
                'assets/images/Facebook - png 0.png', // Đường dẫn đến logo Facebook
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 12), // Giảm khoảng cách giữa logo và text
              const Text(
                'Continue with Facebook',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
