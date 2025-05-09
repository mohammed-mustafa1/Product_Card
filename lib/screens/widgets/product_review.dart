import 'package:flutter/material.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFBD6A9),
      padding: EdgeInsets.all(16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Review',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffAE513F),
              ),
            ),
            Text(
              'Send Your Feedback Now',
              style: TextStyle(),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_down),
          iconSize: 32,
          color: Color(0xffFE9166),
        )
      ]),
    );
  }
}
