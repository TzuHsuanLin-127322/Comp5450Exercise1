import 'package:comp5450_exercise1/data/models/product_model.dart';

class ShoppingCartProductModel{
  ProductModel product;
  int qty;
  int subtotalMinor;

  ShoppingCartProductModel(
    this.product,
    this.qty,
    this.subtotalMinor
  );
}