import 'package:flutter/material.dart';

import '../../models/HomeProduct_model.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình để điều chỉnh động
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff1D182A),
      // Thay thế body trực tiếp bằng Stack để có thể chồng lớp các thành phần
      body: Stack(
        children: [
          // Phần nội dung cuộn với padding
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.06, // 6% chiều rộng màn hình
            ),
            child: SafeArea(
              // Thêm bottom: false để không tính khoảng cách dưới (sẽ bị btnNavigator che)
              bottom: false,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.03), // Khoảng cách trên
                    const HeaderMenu(),
                    SizedBox(height: screenHeight * 0.015), // Khoảng cách giữa
                    const btnSearch(),
                    SizedBox(height: screenHeight * 0.015),
                    const categoriesText(),
                    SizedBox(height: screenHeight * 0.02),
                    const slideItem(),
                    SizedBox(height: screenHeight * 0.03),
                    const textTopAll(),
                    SizedBox(height: screenHeight * 0.02),
                    const listItem(),
                    SizedBox(height: screenHeight * 0.03),
                    const newInText(),
                    SizedBox(height: screenHeight * 0.02),
                    const newInList(),
                    // Thêm khoảng cách cuối để nội dung không bị thanh điều hướng che khi cuộn xuống
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ),
          // Thanh điều hướng được đặt ở vị trí cố định bên dưới
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: btnNavigator(),
          ),
        ],
      ),
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  // Style cho dropdown
  static const _dropdownStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  // Chiều cao cố định cho các phần tử
  static const double elementHeight = 50;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Logo
        Container(
          height: elementHeight, // Chiều cao cố định
          width: elementHeight, // Đảm bảo hình tròn
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/Ellipse 13.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Dropdown
        Container(
          height: elementHeight, // Chiều cao cố định
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xff342F3F),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: DropdownButton<String>(
            value: 'Men',
            items: <String>['Men', 'Women'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: _dropdownStyle),
              );
            }).toList(),
            onChanged: null,
            // Tạm thời vô hiệu hóa tương tác
            style: _dropdownStyle,
            underline: Container(),
            dropdownColor: const Color(0xff342F3F),
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
              size: 24,
            ),
            alignment: Alignment.center, // Căn giữa nội dung dropdown
          ),
        ),
        // Nút tròn
        Container(
          height: elementHeight, // Chiều cao cố định
          width: elementHeight, // Đảm bảo hình tròn
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {}, // Tạm thời giữ chức năng rỗng
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff8E6CEF),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(12),
            ),
            child: Image.asset(
              'assets/images/bag2.png',
              width: 20,
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}

class btnSearch extends StatelessWidget {
  const btnSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, // Chiều cao cố định cho thanh tìm kiếm
      decoration: BoxDecoration(
        color: const Color(0xff342F3F),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const TextField(
        enabled: false, // Tạm thời vô hiệu hóa nhập liệu
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white70,
            size: 24,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
        ),
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

class categoriesText extends StatelessWidget {
  const categoriesText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class slideItem extends StatelessWidget {
  const slideItem({super.key});

  // Danh sách danh mục mẫu
  static const List<Map<String, String>> categories = [
    {'name': 'Hoodies', 'image': 'assets/images/Ellipse 1.png'},
    {'name': 'Short', 'image': 'assets/images/Ellipse 2.png'},
    {'name': 'Shoes', 'image': 'assets/images/Ellipse 3.png'},
    {'name': 'Bag', 'image': 'assets/images/Ellipse 4.png'},
    {'name': 'Accessories', 'image': 'assets/images/Ellipse 5.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Tăng chiều cao để chứa tên dài hơn
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Cho phép cuộn ngang nếu không đủ chỗ
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Phân bố đều
          children: categories.map((category) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10), // Khoảng cách giữa các mục
              child: SizedBox(
                width: 80, // Tăng chiều rộng để chứa tên dài hơn
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      category['image']!,
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      category['name']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14, // Tăng kích thước chữ để dễ đọc
                      ),
                      textAlign: TextAlign.center,
                      // Bỏ TextOverflow.ellipsis để hiển thị toàn bộ tên
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class textTopAll extends StatelessWidget {
  const textTopAll({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Selling',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}

// Widget cho mỗi sản phẩm
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color(0xff342F3F), // Phù hợp với màu nền
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hình ảnh sản phẩm
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage(product.imageUrl), // Sử dụng hình ảnh từ assets
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tên sản phẩm
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    // Giá sản phẩm
                    Row(
                      children: [
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        if (product.originalPrice != null) ...[
                          const SizedBox(width: 8),
                          Text(
                            '\$${product.originalPrice!.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Biểu tượng yêu thích
          const Positioned(
            top: 8,
            right: 8,
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class listItem extends StatelessWidget {
  const listItem({super.key});

  // Danh sách sản phẩm mẫu - 7 sản phẩm
  static List<Product> products = [
    Product(
      name: "Men's Harrington Jacket",
      price: 148.00,
      imageUrl: 'assets/images/jacket.png',
    ),
    Product(
      name: "Max Cirro Men's Slides",
      price: 55.00,
      originalPrice: 100.97,
      imageUrl: 'assets/images/slides.png',
    ),
    Product(
      name: "Men's Sneakers",
      price: 66.00,
      imageUrl: 'assets/images/sneakers.png',
    ),
    Product(
      name: "Men's Casual Shirt",
      price: 89.00,
      imageUrl: 'assets/images/shirt.png',
    ),
    Product(
      name: "Men's Running Shoes",
      price: 120.00,
      originalPrice: 150.00,
      imageUrl: 'assets/images/running_shoes.png',
    ),
    Product(
      name: "Men's Backpack",
      price: 45.00,
      imageUrl: 'assets/images/backpack.png',
    ),
    Product(
      name: "Men's Jacket Pro",
      price: 200.00,
      imageUrl: 'assets/images/jacket_pro.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Chiều cao cố định cho danh sách cuộn ngang
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Cuộn ngang
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10), // Khoảng cách giữa các sản phẩm
            child: SizedBox(
              width: 150, // Chiều rộng cố định cho mỗi sản phẩm
              child: ProductCard(product: products[index]),
            ),
          );
        },
      ),
    );
  }
}

class newInText extends StatelessWidget {
  const newInText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'New In',
              style: TextStyle(
                color: Color(0xff8E6CEF),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class newInList extends StatelessWidget {
  const newInList({super.key});

  // Danh sách sản phẩm mới - 7 sản phẩm
  static List<Product> newInProducts = [
    Product(
      name: "Men's Leather Jacket",
      price: 199.00,
      imageUrl: 'assets/images/leather_jacket.png',
    ),
    Product(
      name: "Men's Casual Shoes",
      price: 75.00,
      originalPrice: 120.00,
      imageUrl: 'assets/images/casual_shoes.png',
    ),
    Product(
      name: "Men's Denim Jeans",
      price: 89.00,
      imageUrl: 'assets/images/denim_jeans.png',
    ),
    Product(
      name: "Men's Hoodie",
      price: 65.00,
      imageUrl: 'assets/images/hoodie.png',
    ),
    Product(
      name: "Men's Winter Coat",
      price: 150.00,
      originalPrice: 200.00,
      imageUrl: 'assets/images/winter_coat.png',
    ),
    Product(
      name: "Men's Sport Shoes",
      price: 110.00,
      imageUrl: 'assets/images/sport_shoes.png',
    ),
    Product(
      name: "Men's T-Shirt",
      price: 25.00,
      imageUrl: 'assets/images/tshirt.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Chiều cao cố định cho danh sách cuộn ngang
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Cuộn ngang
        itemCount: newInProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10), // Khoảng cách giữa các sản phẩm
            child: SizedBox(
              width: 150, // Chiều rộng cố định cho mỗi sản phẩm
              child: ProductCard(product: newInProducts[index]),
            ),
          );
        },
      ),
    );
  }
}

class btnNavigator extends StatelessWidget {
  const btnNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Thêm decoration để tạo hiệu ứng bóng và bo góc phía trên
      decoration: BoxDecoration(
        color: const Color(0xff1D182A),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // Đảm bảo các mục không bị thu nhỏ
        backgroundColor: Colors.transparent,
        // Transparent để sử dụng màu của container
        elevation: 0,
        // Bỏ shadow mặc định
        selectedItemColor: const Color(0xff8E6CEF),
        // Màu khi được chọn
        unselectedItemColor: Colors.white,
        // Màu khi không được chọn
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/home2.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/notificationbing.png')),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/receipt1.png')),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/profile.png')),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        // Chỉ mục mặc định (ví dụ: Home)
        onTap: (index) {
          // Xử lý khi người dùng chọn một mục
          // Ví dụ: Điều hướng đến các màn hình tương ứng
        },
      ),
    );
  }
}
