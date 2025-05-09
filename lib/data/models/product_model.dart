import 'package:comp5450_exercise1/data/models/product_property_model.dart';

class ProductModel {
  final int id;
  final String category;
  final String subcategory;
  final String articleType;
  final String productDisplayName;
  final String productImagePath;
  final String productDescription;
  final int priceMinor;
  final List<ProductPropertyModel> propertyModel;
  
  ProductModel(
    this.id,
    this.category,
    this.subcategory,
    this.articleType,
    this.productDisplayName,
      this.productImagePath,
    this.productDescription,
    this.priceMinor,
    this.propertyModel
  );
}