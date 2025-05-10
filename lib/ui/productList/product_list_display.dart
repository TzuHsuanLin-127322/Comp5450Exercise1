import 'package:comp5450_exercise1/ui/core/product_card_vertical.dart';
import 'package:comp5450_exercise1/ui/core/product_cart_horizontal.dart';
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
    return (
      Scaffold(
        body:  _createProductListView(context, viewModel),
      )
    );
  }

  BoxScrollView _createProductListView(BuildContext context, ProductListViewModel viewModel) {
    final int crossAxisCount = _getCrossAxisCount(context);
    
    if (crossAxisCount == 1) {
      return (
        ListView.separated(
          itemCount: viewModel.productList.length,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) {
            final item = viewModel.productList[index];
            return(
              GestureDetector(
                onTap: () => _onProductClick(context, item.id),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
                  child: Row(
                    children: [
                      ProductCardHorizontal(item: item),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: MaterialButton(
                          color: Colors.amber,
                          child: Text("Add to Cart", style: TextStyle(fontSize: 14),),
                          onPressed: () => viewModel.onProductAddToCartClick(item.id)
                        ),
                      )
                    ] 
                  ),
                ),
              )
            );
          }
        )
      );
    }
    
    return(GridView.count(
      crossAxisCount: crossAxisCount,
      padding: EdgeInsets.all(16),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      // childAspectRatio: 0.5,
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
                      onPressed: () => viewModel.onProductAddToCartClick(item.id)
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