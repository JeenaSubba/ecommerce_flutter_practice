import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  //List of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
        name: 'Classic',
        price: '115',
        imagePath: 'lib/images/dunk.png',
        description:'The Nike Dunk Low Retro returns with crisp'
            //'The Nike Dunk Low Retro returns with crisp overlays and original team colors.'
    ),
    Shoe(
        name: 'Blue',
        price: '115',
        imagePath: 'lib/images/blue.png',
        description:
        'The Nike Dunk Low Retro returns with crisp overlays and original team colors.'
    ),
    Shoe(
        name: 'Pink',
        price: '125',
        imagePath: 'lib/images/pink.png',
        description:
        'The Nike Dunk Low Retro returns with crisp'    ),
    Shoe(
        name: 'Air',
        price: '225',
        imagePath: 'lib/images/air.png',
        description:
        'The Nike Dunk Low Retro returns with crisp'    ),

  ];

  //List of items in user cart
List<Shoe> userCart = [];

  //get list of shoes for sale
List<Shoe> getShoeList(){
  return shoeShop;
}

  //get cart
List<Shoe> getUserCart(){
  return shoeShop;
}

  //add items to cart
void addItemToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
}

  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
