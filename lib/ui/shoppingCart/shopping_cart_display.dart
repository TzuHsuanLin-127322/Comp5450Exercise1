import 'package:comp5450_exercise1/ui/core/product_cart_horizontal.dart';
import 'package:comp5450_exercise1/ui/shoppingCart/shopping_cart_view_model.dart';
import 'package:comp5450_exercise1/util/string_formatter.dart';
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
    
    if (viewModel.shoppingCartContent?.productList == null || viewModel.shoppingCartContent!.productList.isEmpty) {
      return (
        Center(
          child: Text('Cart Empty', style: TextStyle(fontSize: 24))
        )
      );
    }

    return(
      Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: viewModel.shoppingCartContent!.productList.length,
              padding: EdgeInsets.all(16),
              itemBuilder: (context, index) {
                final item = viewModel.shoppingCartContent!.productList[index];
                return (
                  Card(
                    elevation: 3,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            flex:3,
                            child: Row(children: [ProductCardHorizontal(item: item.product)])
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('Qty:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                                      SizedBox(width: 8),
                                      GestureDetector(
                                        onTap: () => viewModel.onRemoveItemClick(index),
                                        child: Icon(Icons.delete)
                                      ),
                                      Container(
                                        padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
                                        decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.remove),
                                              onPressed: () => viewModel.onMinusItemClick(index)
                                            ),
                                            SizedBox(
                                              width: 40,
                                              child: Center(child: Text('${item.qty}')),
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.add),
                                              onPressed: () => viewModel.onAddItemClick(index)
                                            )
                                          ]
                                        ),
                                      ),
                                    ]
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'Subtotal: ${formatMoney(item.subtotalMinor)}',
                                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)
                                  )
                                ],
                              )
                            )
                          )
                          
                        ],
                      ),
                    )
                  )
                );
            }),
          ),
          MaterialButton(
            color: Colors.orange,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart, color: Colors.white,),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16,8,16,8),
                        child: Text(
                          'Checkout ${formatMoney(viewModel.shoppingCartContent!.totalMinor)}',
                          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
            onPressed: () => {}
          ),
        ],
      )
    );
  }
}