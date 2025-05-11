import 'package:comp5450_exercise1/data/models/shopping_cart_product_model.dart';

class ShoppingCartModel {
  List<ShoppingCartProductModel> productList;
  int totalMinor;

  ShoppingCartModel(
    this.productList,
    this.totalMinor
  );
}