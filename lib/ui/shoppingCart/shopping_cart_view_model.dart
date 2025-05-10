import 'package:comp5450_exercise1/data/models/shopping_cart_model.dart';
import 'package:comp5450_exercise1/data/models/shopping_cart_product_model.dart';
import 'package:comp5450_exercise1/data/repositories/shopping_cart_repository.dart';
import 'package:flutter/material.dart';

class ShoppingCartViewModel extends ChangeNotifier{
  ShoppingCartViewModel({required ShoppingCartRepository shoppingCartRepository})
  : _shoppingCartRepository = shoppingCartRepository{
    callback = () => onShoppingCartUpdate();
    shoppingCartRepository.shoppingCartContent.addListener(callback);
    onShoppingCartUpdate();
  }
  late final VoidCallback callback;
  final ShoppingCartRepository _shoppingCartRepository;

  ShoppingCartModel? _shoppingCartContent;
  
  void onShoppingCartUpdate() {
    _shoppingCartContent = _shoppingCartRepository.shoppingCartContent.value;
  }

  void onAddItemClick(int index){
    ShoppingCartProductModel product = _shoppingCartContent!.productList[index];
    _shoppingCartRepository.changeProductQty(product.product.id, product.qty + 1);
  }

  void onMinusItemClick(int index){
    ShoppingCartProductModel product = _shoppingCartContent!.productList[index];
    _shoppingCartRepository.changeProductQty(product.product.id, product.qty - 1);
  }

  void onRemoveItemClick(int index){
    ShoppingCartProductModel product = _shoppingCartContent!.productList[index];
    _shoppingCartRepository.removeProductFromCart(product.product.id);
  }

  ShoppingCartModel? get shoppingCartContent => _shoppingCartContent;


  @override
  void dispose() {
    _shoppingCartRepository.shoppingCartContent.removeListener(callback);
    super.dispose();
  }
}