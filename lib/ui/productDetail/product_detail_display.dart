import 'package:comp5450_exercise1/ui/productDetail/product_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailDisplay extends StatelessWidget{
  // TODO: Complete Product Detail Dispaly
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
      Scaffold(
        appBar: AppBar(
          leading: CloseButton(),
          title: Text("Product Detail")
        ),
        bottomSheet: MaterialButton(
          child: Text('Add to Cart'),
          onPressed: () => {}
        ),
        body: Column(
          children: [
            Image(image: AssetImage('assets/images/${viewModel.productModel!.productImagePath}')),
            Text(viewModel.productModel!.productDisplayName),
            Text('\$${viewModel.productModel!.priceMinor/100}'),
            Text(viewModel.productModel!.productDescription)
          ],
        )
      )
    );
  }
}