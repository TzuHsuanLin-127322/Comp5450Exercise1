import 'package:comp5450_exercise1/data/models/product_model.dart';

class ShoppingCartProductModel{
  // TODO Complete Shopping Cart Product Model
  ProductModel product;
  int qty;
  int subtotalMinor;

  ShoppingCartProductModel(
    this.product,
    this.qty,
    this.subtotalMinor
  );
}