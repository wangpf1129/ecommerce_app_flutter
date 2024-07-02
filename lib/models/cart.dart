import 'package:ecommerce_app_flutter/models/shoe.dart';

class Cart {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Force 1',
        price: '799',
        imagePath: 'lib/images/Nike-Air-Force.png',
        description:
            'Nike Air Force 1 \'07 men\'s Air Force One sneakers renew the first-year basketball shoes, reproducing the past glory. The shoe renewal interprets the well-known features: 80s retro structure, eye-catching details, and basketball style, allowing you to enjoy comfortable foot feel while showcasing casual style.'),
    Shoe(
        name: 'Nike P 6000',
        price: '749',
        imagePath: 'lib/images/Nike-P-6000.png',
        description:
            'Nike P-6000 men\'s sports shoes integrate the design of past Pegasus shoes, injecting a new fashion trend into the early 21st-century sporty style. The sporty design lines combined with breathable mesh fabric create an eye-catching look and provide a comfortable daily wearing experience. Soft foam is inspired by athletics tracks to create a raised design, delivering outstanding cushioning performance.'),
    Shoe(
        name: 'Nike Pegasus',
        price: '949',
        imagePath: 'lib/images/Nike-Pegasus.png',
        description:
            'Nike Pegasus 41 women\'s road running shoes have outstanding rebound cushioning performance, helping you to step lively in daily running. The combination of two Air Zoom cushioning configurations and ReactX foam midsole creates a light foot feel and excellent energy feedback effect. The upper adopts an engineered mesh design, which helps reduce the weight of the shoe body and create outstanding breathability.')
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
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
