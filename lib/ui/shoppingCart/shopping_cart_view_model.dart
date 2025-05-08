import 'package:comp5450_exercise1/data/models/shopping_cart_product_model.dart';
import 'package:comp5450_exercise1/data/repositories/shopping_cart_repository.dart';

class ShoppingCartViewModel {
  // TODO: Complete Shopping Cart model
  ShoppingCartViewModel({required ShoppingCartRepository shoppingCartRepository}): _shoppingCartRepository = shoppingCartRepository;
  final ShoppingCartRepository _shoppingCartRepository;

  List<ShoppingCartProductModel> _shoppingCartProductModel = List.empty();
  String _finalPrice = "0.00";
  
  // Inject Repository

  /**
   * Actions to be done
   * - Get shopping Cart data
   * - On QTY Change
   * - On Item Delete Click
   * - On Checkout click
   * - Go shop button (when shopping cart is empty)
   */
}