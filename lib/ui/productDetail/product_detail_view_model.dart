import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/data/repositories/product_detail_repository.dart';
import 'package:comp5450_exercise1/data/repositories/shopping_cart_repository.dart';
import 'package:flutter/material.dart';

class ProductDetailViewModel extends ChangeNotifier{
  // Inject repository
  ProductDetailViewModel({
    required ProductDetailRepository productDetailRepository,
    required ShoppingCartRepository shoppingCartRepository,
    required int productId
  }): _productDetailRepository = productDetailRepository,
      _shoppingCartRepository = shoppingCartRepository,
      _productId = productId {
    initProductDetail();
  }


  final ProductDetailRepository _productDetailRepository;
  final ShoppingCartRepository _shoppingCartRepository;
  final int _productId;
  ProductModel? _productDetailData;

  void initProductDetail() {
    final productDetail = _productDetailRepository.fetchProductDetail(_productId);
    _productDetailData = productDetail;
    notifyListeners();
  }

  void onAddToCartClick() {
    _shoppingCartRepository.addProductToCart(_productId);
  }

  ProductModel? get productModel => _productDetailData;
  /**
   * Function to add
   * - Get product detail
   * - On add to cart click
   */
}