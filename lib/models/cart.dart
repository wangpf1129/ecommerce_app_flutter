import 'package:ecommerce_app_flutter/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Force 1',
        price: '799',
        imagePath: 'lib/images/Nike-Air-Force.png',
        description:
            'Nike Air Force 1 \'07 men\'s Air Force One sneakers renew the first-year basketball shoes.'),
    Shoe(
        name: 'Nike P 6000',
        price: '749',
        imagePath: 'lib/images/Nike-P-6000.png',
        description:
            'Nike P-6000 men\'s sports shoes integrate the design of past Pegasus shoes.'),
    Shoe(
        name: 'Nike Pegasus',
        price: '949',
        imagePath: 'lib/images/Nike-Pegasus.png',
        description:
            'Nike Pegasus 41 women\'s road running shoes have outstanding rebound cushioning performance.')
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
