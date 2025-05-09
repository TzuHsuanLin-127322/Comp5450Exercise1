import 'package:comp5450_exercise1/data/repositories/shopping_cart_repository.dart';
import 'package:flutter/material.dart';

class BottomNavigationPageViewModel extends ChangeNotifier{
  BottomNavigationPageViewModel({required ShoppingCartRepository shoppingCartRepository}) {
    _shoppingCartRepository = shoppingCartRepository;
  }

  late final ShoppingCartRepository _shoppingCartRepository;
}