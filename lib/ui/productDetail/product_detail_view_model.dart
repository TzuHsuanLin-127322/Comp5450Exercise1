import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/data/repositories/product_detail_repository.dart';

class ProductDetailViewModel{
  // TODO: Complete Product detail display model
  // Inject repository
  ProductDetailViewModel({required ProductDetailRepository productDetailRepository}): _productDetailRepository = productDetailRepository;
  final ProductDetailRepository _productDetailRepository;
  
  ProductModel? _productDetailData;

  /**
   * Function to add
   * - Get product detail
   * - On add to cart click
   */
}