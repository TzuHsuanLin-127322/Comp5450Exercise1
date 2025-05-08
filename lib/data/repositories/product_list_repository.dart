import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/data/services/product_list_service.dart';

class ProductListRepository{
  // TODO: Complete Product Repository
  ProductListRepository({required ProductListService productListService}): _productListService = productListService;

  final ProductListService _productListService;

  List<ProductModel>? _productListModel;
}