import 'package:comp5450_exercise1/ui/core/product_card_vertical.dart';
import 'package:comp5450_exercise1/ui/productDetail/product_detail_display.dart';
import 'package:comp5450_exercise1/ui/productDetail/product_detail_view_model.dart';
import 'package:comp5450_exercise1/ui/productList/product_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListDisplay extends StatelessWidget{

    // TODO: Complete Product List Display
  // Inject view model
  ProductListDisplay({super.key});
  /**
   * Displays:
   * Item List -> Grid of item cards
   * Bottom Bar: navigation -> Product List and target
   */

  @override
  Widget build(BuildContext context) {
    final ProductListViewModel viewModel = context.watch();

    if(viewModel.productList.isEmpty) {
      return (Center(
        child: Text("No items available")
      ));
    }

    final int crossAxisCount = _getCrossAxisCount(context);

    return(GridView.count(
      crossAxisCount: crossAxisCount,
      padding: EdgeInsets.all(16),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: viewModel.productList.map((item) {
        return (
          GestureDetector(
            onTap: () => _onProductClick(context, item.id),
            child: Card(
              elevation: 3,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    ProductCardVertical(item: item),
                    MaterialButton(
                      color: Colors.amber,
                      child: Text("Add to Cart", style: TextStyle(fontSize: 16),),
                      onPressed: (){print("add to cart");}
                    )
                  ]
                ),
              ) 
            ),
          )
        );
      }).toList()
    ));
  }

  int _getCrossAxisCount(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    int cardCount = size.width ~/ 300;
    return cardCount < 1 ? 1 : cardCount;
  }

  void _onProductClick(BuildContext context, int productId){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => ChangeNotifierProvider(
        create: (_) => ProductDetailViewModel(
          productDetailRepository: context.read(),
          productId: productId
        ),
        child: ProductDetailDisplay()
      ))
    );
  }
}