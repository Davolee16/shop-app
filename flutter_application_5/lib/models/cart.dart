import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'AIR JORDANS', price: '#17,000', description: 'A signature shoe', imagePath: 'assets/images/greynike.png'),

    Shoe(name: 'NIKE AIR', price: '#15,000', description: 'Matches every fit', imagePath: 'assets/images/brownnike.png'),

    Shoe(name: 'ZOOM FREAK', price: '#16,000', description: 'Too simple but to simp for', imagePath: 'assets/images/whitenike.png'),

    Shoe(name: 'AIR MAX', price: '#17,000', description: 'The perfect shoe for men', imagePath: 'assets/images/airmax.jpg')
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

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
    
  }
}
