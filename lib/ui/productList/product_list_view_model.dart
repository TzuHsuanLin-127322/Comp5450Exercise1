import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/data/repositories/product_list_repository.dart';
import 'package:comp5450_exercise1/data/repositories/shopping_cart_repository.dart';
import 'package:flutter/material.dart';

class ProductListViewModel extends ChangeNotifier{
  // Inject repository
  ProductListViewModel({
    required ProductListRepository productListRepository,
    required ShoppingCartRepository shoppingCartRepository
  }) : _productListRepository = productListRepository,
       _shoppingCartRepository = shoppingCartRepository {
    initializeProductList();
  }

  final ProductListRepository _productListRepository;
  final ShoppingCartRepository _shoppingCartRepository;
  final List<ProductModel> _productList = [];

  void initializeProductList() {
    final products = _productListRepository.fetchProductList();
    _productList.clear();
    _productList.addAll(products);
    notifyListeners();
  }

  void onProductAddToCartClick(int productNumber) {
    _shoppingCartRepository.addProductToCart(productNumber);
  }

  List<ProductModel> get productList => _productList;
  

  /**
   * Functions to be done:
   * - Get Product List data
   * - On Product click -> Goes to item detail page
   * - On Product add to cart click -> Add go to cart page
   */
}