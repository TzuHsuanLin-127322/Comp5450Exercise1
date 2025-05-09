import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/data/repositories/product_detail_repository.dart';
import 'package:flutter/material.dart';

class ProductDetailViewModel extends ChangeNotifier{
  // TODO: Complete Product detail display model
  // Inject repository
  ProductDetailViewModel({
    required ProductDetailRepository productDetailRepository,
    required int productId
  }): _productDetailRepository = productDetailRepository,
      _productId = productId {
    initProductDetail();
  }


  final ProductDetailRepository _productDetailRepository;
  final int _productId;
  ProductModel? _productDetailData;

  void initProductDetail() {
    final productDetail = _productDetailRepository.fetchProductDetail(_productId);
    _productDetailData = productDetail;
    notifyListeners();
  }

  ProductModel? get productModel => _productDetailData;
  /**
   * Function to add
   * - Get product detail
   * - On add to cart click
   */
}