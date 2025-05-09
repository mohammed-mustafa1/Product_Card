import 'package:flutter/material.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Color(0xffAF4F40),
        ),
        SizedBox(width: 8),
        Text(
          '4(5)',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
