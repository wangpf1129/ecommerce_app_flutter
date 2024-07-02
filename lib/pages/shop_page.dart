import 'package:ecommerce_app_flutter/components/shoe_title.dart';
import 'package:ecommerce_app_flutter/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'everyone files.. some fly loinger than others',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks🔥',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        const SizedBox(height: 10),

        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  Shoe shoe = Shoe(
                      name: 'Nike Air Max 90',
                      price: '150',
                      imagePath: 'lib/images/Nike-P-6000.png',
                      description:
                          'The Nike Air Max 90 stays true to its OG roots with its iconic Waffle sole.');
                  return ShoeTitle(shoe: shoe);
                })),

        const Padding(
          padding: EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
