import 'package:comp5450_exercise1/ui/shoppingCart/shopping_cart_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCartDisplay extends StatelessWidget{
  //TODO: Complete shopping cart display
  // Inject the view model
  const ShoppingCartDisplay({super.key});
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
    final ShoppingCartViewModel viewModel = context.watch();
    
    if (viewModel.shoppingCartContent.isEmpty) {
      return (
        Center(
          child: Text('Cart Empty', style: TextStyle(fontSize: 24))
        )
      );
    }
    return(Center(
      child: Text(
        'Shopping Cart'
      )
    ));
  }
}