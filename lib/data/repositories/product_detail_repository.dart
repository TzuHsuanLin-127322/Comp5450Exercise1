import 'package:comp5450_exercise1/data/models/product_detail_model.dart';
import 'package:comp5450_exercise1/data/services/product_detail_service.dart';
import 'package:flutter/material.dart';

class ProductDetailRepository extends ChangeNotifier {
  // TODO: Complete Product Detail Repository
  ProductDetailRepository({required ProductDetailService productDetailService}): _productDetailService = productDetailService;

  final ProductDetailService _productDetailService;

  ProductDetailModel? productDetailModel;


}