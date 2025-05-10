import 'package:comp5450_exercise1/ui/productDetail/product_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailDisplay extends StatelessWidget{
  const ProductDetailDisplay({super.key});

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
                        'Add to Cart',
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1.33,
                  child: Image(image: AssetImage('assets/images/${viewModel.productModel!.productImagePath}'))
                ),
                SizedBox(height:16),
                Text(
                  viewModel.productModel!.productDisplayName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height:8),
                Text(
                  '\$${viewModel.productModel!.priceMinor/100}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height:8),
                Text(
                  viewModel.productModel!.productDescription,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 36,)
              ],
            ),
          ),
        ) 
      )
    );
  }

  void onAddToCartClick(int itemId) {
    // TODO Implement on add to cart click
  }
}