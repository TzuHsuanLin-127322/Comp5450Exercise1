import 'package:comp5450_exercise1/ui/productDetail/product_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailDisplay extends StatelessWidget{
  // TODO: Complete Product Detail Dispaly
  // Inject view model
  ProductDetailDisplay({super.key});

  /**
   * Displays:
   * - Product Image
   * - Item Name
   * - Price
   * - Lower Bar: Add to cart
   */
  


  @override
  Widget build(BuildContext context) {
    final ProductDetailViewModel viewModel = context.watch();
    if (viewModel.productModel == null) {
      return (
        Center(
          child: Text("Loading, Please wait")
        )
      );
    }
    return (
      Column(
        children: [
          Text(viewModel.productModel!.productDescription)
        ],
      )
    );
  }
}