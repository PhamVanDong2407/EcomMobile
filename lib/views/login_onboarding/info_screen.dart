import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1D182A),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 160),
                textTitle(),
                SizedBox(height: 50),
                gender(),
                SizedBox(height: 50),
                ageUs(),
                SizedBox(height: 300),
                btnFinish(),
              ],
            ),
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
    return const Column(
      children: [
        Text(
          'Tell us About yourself',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class gender extends StatefulWidget {
  const gender({super.key});

  @override
  State<gender> createState() => _genderState();
}

class _genderState extends State<gender> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    // Lấy chiều rộng màn hình
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Who do you shop for ?',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              // Sử dụng Expanded để nút chiếm không gian đều
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0), // Thêm padding
                child: SizedBox(
                  height: 48, // Chiều cao cố định cho nút
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedGender = 'Men';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedGender == 'Men' ? const Color(0xff8E6CEF) : const Color(0xff342F3F),
                    ),
                    child: const Text(
                      // Đặt const cho Text
                      'Men',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              // Sử dụng Expanded cho nút thứ hai
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 48, // Chiều cao cố định cho nút
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedGender = 'Women';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedGender == 'Women' ? const Color(0xff8E6CEF) : const Color(0xff342F3F),
                    ),
                    child: const Text(
                      'Women',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ageUs extends StatefulWidget {
  const ageUs({super.key});

  @override
  State<ageUs> createState() => _ageUsState();
}

class _ageUsState extends State<ageUs> {
  // Biến để lưu giá trị được chọn từ dropdown
  String? _selectedAge;

  // Danh sách các lựa chọn tuổi
  final List<String> _ageOptions = [
    'Under 18',
    '18-24',
    '25-34',
    '35-44',
    '45-54',
    '55+',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Căn trái cho đồng bộ
      children: [
        const Text(
          'How old are you ?',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            color: const Color(0xff342F3F), // Màu nền của dropdown
            borderRadius: BorderRadius.circular(20), // Bo góc
          ),
          child: DropdownButton<String>(
            value: _selectedAge,
            hint: const Text(
              'Select your age',
              style: TextStyle(color: Colors.white70),
            ),
            isExpanded: true,
            // Mở rộng để chiếm toàn bộ chiều rộng
            dropdownColor: const Color(0xff342F3F),
            // Màu nền của menu dropdown
            style: const TextStyle(color: Colors.white),
            // Màu chữ
            underline: const SizedBox(),
            // Ẩn đường gạch chân mặc định
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            items: _ageOptions.map((String age) {
              return DropdownMenuItem<String>(
                value: age,
                child: Text(age),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedAge = newValue;
              });
            },
          ),
        ),
      ],
    );
  }
}

class btnFinish extends StatefulWidget {
  const btnFinish({super.key});

  @override
  State<btnFinish> createState() => _btnFinishState();
}

class _btnFinishState extends State<btnFinish> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Đảm bảo nút chiếm toàn bộ chiều rộng
      child: ElevatedButton(
        onPressed: () {
          context.go('/homepage');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff8E6CEF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Bo tròn góc với bán kính 30
          ),
          padding: const EdgeInsets.symmetric(vertical: 15), // Tăng chiều cao thêm 10
        ),
        child: const Text(
          'Finish',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
