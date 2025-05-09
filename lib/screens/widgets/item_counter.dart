import 'package:flutter/material.dart';

class ItemCounter extends StatelessWidget {
  const ItemCounter({
    super.key,
    required this.count,
    required this.onPressedDecrement,
    required this.onPressedIncrement,
  });
  final int count;
  final Function()? onPressedDecrement;
  final Function()? onPressedIncrement;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Color(0xffFE9166),
      ),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFEBD2),
              ),
              child: IconButton(
                  onPressed: onPressedDecrement, icon: Icon(Icons.remove))),
          Text(
            count.toString(),
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffAF4F41),
              ),
              margin: EdgeInsets.all(6),
              child: IconButton(
                  onPressed: onPressedIncrement,
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ))),
        ],
      ),
    );
  }
}
