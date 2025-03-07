import 'package:flutter/material.dart';

class DetailcateScreen extends StatefulWidget {
  const DetailcateScreen({super.key});

  @override
  State<DetailcateScreen> createState() => _DetailcateScreenState();
}

class _DetailcateScreenState extends State<DetailcateScreen> {
  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình để điều chỉnh động
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff1D182A),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.03),
                const btnBack(),
                SizedBox(height: screenHeight * 0.02),
                const textTitle(),
                SizedBox(height: screenHeight * 0.02),
                const btnItem(),
              ],
            ),
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
    return const Text(
      'Shop by Categories',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}

class btnItem extends StatefulWidget {
  const btnItem({super.key});

  @override
  State<btnItem> createState() => _btnItemState();
}

class _btnItemState extends State<btnItem> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0XFF342F3F),
            // Màu nền nút
            minimumSize: Size(screenWidth * 0.8, 70),
            // Kích thước nút linh hoạt theo 80% chiều rộng màn hình
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Bo góc
            ),
            padding: const EdgeInsets.symmetric(horizontal: 18), // Thêm padding ngang để cân đối
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/Ellipse 1.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 12), // Giảm khoảng cách giữa logo và text để cân đối
              const Text(
                'Hoodies',
                style: TextStyle(
                  fontSize: 16, // Tăng kích thước chữ để dễ đọc hơn
                  fontWeight: FontWeight.normal, // Chữ thường thay vì bold để trông tự nhiên hơn
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Khoảng cách giữa các nút
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0XFF342F3F),
            // Màu nền nút
            minimumSize: Size(screenWidth * 0.8, 70),
            // Kích thước nút linh hoạt theo 80% chiều rộng màn hình
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Bo góc
            ),
            padding: const EdgeInsets.symmetric(horizontal: 18), // Thêm padding ngang để cân đối
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/Ellipse 2.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 12), // Giảm khoảng cách giữa logo và text để cân đối
              const Text(
                'Accessories',
                style: TextStyle(
                  fontSize: 16, // Tăng kích thước chữ để dễ đọc hơn
                  fontWeight: FontWeight.normal, // Chữ thường thay vì bold để trông tự nhiên hơn
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Khoảng cách giữa các nút
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0XFF342F3F),
            // Màu nền nút
            minimumSize: Size(screenWidth * 0.8, 70),
            // Kích thước nút linh hoạt theo 80% chiều rộng màn hình
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Bo góc
            ),
            padding: const EdgeInsets.symmetric(horizontal: 18), // Thêm padding ngang để cân đối
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/Ellipse 3.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 12), // Giảm khoảng cách giữa logo và text để cân đối
              const Text(
                'Shorts',
                style: TextStyle(
                  fontSize: 16, // Tăng kích thước chữ để dễ đọc hơn
                  fontWeight: FontWeight.normal, // Chữ thường thay vì bold để trông tự nhiên hơn
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Khoảng cách giữa các nút
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0XFF342F3F),
            // Màu nền nút
            minimumSize: Size(screenWidth * 0.8, 70),
            // Kích thước nút linh hoạt theo 80% chiều rộng màn hình
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Bo góc
            ),
            padding: const EdgeInsets.symmetric(horizontal: 18), // Thêm padding ngang để cân đối
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/Ellipse 4.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 12), // Giảm khoảng cách giữa logo và text để cân đối
              const Text(
                'Shoes',
                style: TextStyle(
                  fontSize: 16, // Tăng kích thước chữ để dễ đọc hơn
                  fontWeight: FontWeight.normal, // Chữ thường thay vì bold để trông tự nhiên hơn
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Khoảng cách giữa các nút
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0XFF342F3F),
            // Màu nền nút
            minimumSize: Size(screenWidth * 0.8, 70),
            // Kích thước nút linh hoạt theo 80% chiều rộng màn hình
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Bo góc
            ),
            padding: const EdgeInsets.symmetric(horizontal: 18), // Thêm padding ngang để cân đối
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/Ellipse 5.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 12), // Giảm khoảng cách giữa logo và text để cân đối
              const Text(
                'Bags',
                style: TextStyle(
                  fontSize: 16, // Tăng kích thước chữ để dễ đọc hơn
                  fontWeight: FontWeight.normal, // Chữ thường thay vì bold để trông tự nhiên hơn
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Khoảng cách giữa các nút
      ],
    );
  }
}
