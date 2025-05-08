import 'package:comp5450_exercise1/data/models/product_list_model.dart';
import 'package:comp5450_exercise1/data/repositories/product_list_repository.dart';

class ProductListViewModel {
  // TODO: Complete Product List View Model
  // Inject repository
  ProductListViewModel({required ProductListRepository productListRepository}): _productListRepository = productListRepository;
  final ProductListRepository _productListRepository;
  ProductListModel? _productListModel;
  

  /**
   * Functions to be done:
   * - Get Product List data
   * - On Product click -> Goes to item detail page
   * - On Product add to cart click -> Add go to cart page
   */
}