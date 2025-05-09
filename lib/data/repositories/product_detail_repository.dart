import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/data/services/product_detail_service.dart';
import 'package:comp5450_exercise1/dummyData/dummy_data.dart';
import 'package:flutter/material.dart';

class ProductDetailRepository {
  // TODO: Complete Product Detail Repository
  ProductDetailRepository({required ProductDetailService productDetailService}): _productDetailService = productDetailService;

  final ProductDetailService _productDetailService;

  ProductModel? fetchProductDetail(int productId){
    return dummyData[productId];
  }


}