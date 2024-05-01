import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'North Star',
      price: '4,999.00',
      imagePath: 'lib/images/b.png',
      description: 'North Star COURT 86 Casual Lace-Up Sneaker For Men',
    ),
    Shoe(
      name: 'Power',
      price: '3,499.00',
      imagePath: 'lib/images/a.png',
      description: 'Power HARROW PLUS KAZAM Lace-Up Sneaker For Men',
    ),
    Shoe(
      name: 'LARIX',
      price: '5,999.00',
      imagePath: 'lib/images/c.png',
      description: 'Weinbrenner LARIX ELK Lace-Up Outdoor Sneaker',
    ),
    Shoe(
      name: 'Matrix',
      price: '2,499.00',
      imagePath: 'lib/images/d.png',
      description: 'Weinbrenner MATRIX Casual Lace-Up Outdoorsy Shoe',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
