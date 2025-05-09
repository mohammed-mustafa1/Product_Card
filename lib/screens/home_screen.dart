import 'package:flutter/material.dart';
import 'package:product_card/screens/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEBD2),
      appBar: AppBar(
        backgroundColor: Color(0xffFBD6A9),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xffAD5444),
        ),
      ),
      body: const HomeBody(),
    );
  }
}
