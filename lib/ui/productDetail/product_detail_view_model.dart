import 'package:comp5450_exercise1/data/models/product_detail_model.dart';
import 'package:comp5450_exercise1/data/repositories/product_detail_repository.dart';

class ProductDetailViewModel{
  // TODO: Complete Product detail display model
  // Inject repository
  ProductDetailViewModel({required ProductDetailRepository productDetailRepository}): _productDetailRepository = ProductDetailRepository;
  final _productDetailRepository;
  
  ProductDetailModel? _productDetailData;

  /**
   * Function to add
   * - Get product detail
   * - On add to cart click
   */
}