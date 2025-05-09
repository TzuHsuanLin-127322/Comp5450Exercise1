import 'package:flutter/material.dart';

class ShoppingCartDisplay extends StatelessWidget{
  //TODO: Complete shopping cart display
  // Inject the view model
  
  /**
   * Displays
   * 1. Items
   *  Product Image
   *  Product name
   *  QTY - Increase and Decrease
   *  Subtotal
   * 2. Total
   * 3. Checkout button
   */
  @override
  Widget build(BuildContext context) {
    return(Center(
      child: Text(
        'Shopping Cart'
      )
    ));
  }
}