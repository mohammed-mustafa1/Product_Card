import 'package:flutter/material.dart';
import 'package:product_card/screens/widgets/add_to_cart.dart';
import 'package:product_card/screens/widgets/item_counter.dart';
import 'package:product_card/screens/widgets/product_rate.dart';
import 'package:product_card/screens/widgets/product_review.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int qty = 1;
  double price = 160;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage('assets/images/burger.jpg'),
                fit: BoxFit.cover,
                scale: 1,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Burger Mix Combo',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color(0xffAE513F),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductRate(),
              ItemCounter(
                  count: qty,
                  onPressedDecrement: () {
                    setState(() {
                      if (qty == 1) return;
                      qty--;
                      price = qty * 160;
                    });
                  },
                  onPressedIncrement: () {
                    setState(() {
                      qty++;
                      price = qty * 160;
                    });
                  }),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Description',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xffAE513F),
            ),
          ),
          Text(
            '2 Burgers, Fries, Drink with 30% Sales',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          AddToCart(price: price),
          SizedBox(height: 16),
          Divider(
            color: Color(0xffFE9166),
            endIndent: 16,
            indent: 16,
          ),
          SizedBox(height: 16),
          ProductReview()
        ],
      ),
    );
  }
}
