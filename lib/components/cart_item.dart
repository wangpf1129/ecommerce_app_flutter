import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class CartItem extends StatelessWidget {
  final Shoe individualShoe;
  final void Function() onTabToRemoveItem;
  const CartItem(
      {super.key,
      required this.individualShoe,
      required this.onTabToRemoveItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              individualShoe.imagePath,
              width: 100,
            ),
          ),

          // shoe details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                individualShoe.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '\$${individualShoe.price}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          // remove button
          GestureDetector(
            onTap: onTabToRemoveItem,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.delete),
            ),
          ),
        ],
      ),
    );
  }
}
