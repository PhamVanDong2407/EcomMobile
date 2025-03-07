import 'package:flutter/material.dart';

import '../../models/Hoodie_model.dart';

class DetailHoodiesScreen extends StatefulWidget {
  const DetailHoodiesScreen({super.key});

  @override
  State<DetailHoodiesScreen> createState() => _DetailHoodiesScreenState();
}

class _DetailHoodiesScreenState extends State<DetailHoodiesScreen> {
  final List<HoodieProduct> hoodies = [
    HoodieProduct(name: "Men's Fleece Pullover Hoodie", price: 100.00, imageUrl: 'assets/images/hoodie_green.png', color: const Color(0xff1E3A2B)),
    HoodieProduct(name: "Fleece Pullover Skate Hoodie", price: 150.97, imageUrl: 'assets/images/hoodie_black.png', color: const Color(0xff15141A)),
    HoodieProduct(name: "Fleece Skate Hoodie", price: 110.00, imageUrl: 'assets/images/hoodie_yellow.png', color: const Color(0xffF59E0B)),
    HoodieProduct(name: "Men's Ice-Dye Pullover Hoodie", price: 128.97, imageUrl: 'assets/images/hoodie_tiedye.png', color: const Color(0xffE5F0E7)),
    HoodieProduct(name: "Premium Graphic Hoodie", price: 135.50, imageUrl: 'assets/images/hoodie_print.png', color: const Color(0xff222222)),
    HoodieProduct(name: "Winter Sport Hoodie", price: 118.75, imageUrl: 'assets/images/hoodie_blue.png', color: const Color(0xff1A3663)),
    HoodieProduct(name: "Lightweight Summer Hoodie", price: 89.99, imageUrl: 'assets/images/hoodie_light.png', color: const Color(0xffEAE8E0)),
    HoodieProduct(name: "Urban Street Hoodie", price: 125.00, imageUrl: 'assets/images/hoodie_red.png', color: const Color(0xff8B0000)),
    HoodieProduct(name: "Vintage Washed Hoodie", price: 95.50, imageUrl: 'assets/images/hoodie_gray.png', color: const Color(0xff808080)),
    HoodieProduct(name: "Premium Tech Fleece Hoodie", price: 165.00, imageUrl: 'assets/images/hoodie_purple.png', color: const Color(0xff4B0082)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1D2B),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BtnBack(),
              const SizedBox(width: 30),
              const TextTitle(),
              const SizedBox(height: 20),
              Expanded(
                child: HoodiesGrid(hoodies: hoodies),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HoodiesGrid extends StatelessWidget {
  final List<HoodieProduct> hoodies;

  const HoodiesGrid({Key? key, required this.hoodies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemCount: hoodies.length,
      itemBuilder: (context, index) {
        return HoodieCard(product: hoodies[index]);
      },
    );
  }
}

class HoodieCard extends StatelessWidget {
  final HoodieProduct product;

  const HoodieCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: product.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                product.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BtnBack extends StatelessWidget {
  const BtnBack({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff342F3F),
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(12),
      ),
      child: Image.asset(
        'assets/images/arrowleft2.png',
        width: 24,
        height: 24,
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  const TextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hoodies',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
