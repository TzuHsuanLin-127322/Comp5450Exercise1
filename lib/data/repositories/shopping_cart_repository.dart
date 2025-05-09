import 'package:comp5450_exercise1/data/models/shopping_cart_model.dart';
import 'package:comp5450_exercise1/data/services/shopping_cart_service.dart';
import 'package:flutter/widgets.dart';

class ShoppingCartRepository{
  // TODO: Complete Shopping cart repository
  // Inject Shopping cart service
  ShoppingCartRepository({required ShoppingCartService shoppingCartService}): _shoppingCartService = shoppingCartService;
  final ShoppingCartService _shoppingCartService;
  final ValueNotifier<int> cartCount = ValueNotifier(0);
  ShoppingCartModel? shoppingCartModel;  
}