import 'package:flutter/material.dart';
import 'package:product_card/screens/home_screen.dart';

void main() {
  runApp(const ProductCard());
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
