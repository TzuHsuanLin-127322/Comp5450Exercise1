import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/dummyData/dummy_data.dart';

class ProductDetailRepository {
  ProductDetailRepository();

  ProductModel? fetchProductDetail(int productId){
    return dummyData[productId];
  }


}