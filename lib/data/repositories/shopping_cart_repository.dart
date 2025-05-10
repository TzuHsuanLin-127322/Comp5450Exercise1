import 'package:collection/collection.dart';
import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/data/models/shopping_cart_model.dart';
import 'package:comp5450_exercise1/data/models/shopping_cart_product_model.dart';
import 'package:comp5450_exercise1/data/services/shopping_cart_service.dart';
import 'package:comp5450_exercise1/dummyData/dummy_data.dart';
import 'package:flutter/widgets.dart';

class ShoppingCartRepository{
  // TODO: Complete Shopping cart repository
  // Inject Shopping cart service
  ShoppingCartRepository({required ShoppingCartService shoppingCartService}): _shoppingCartService = shoppingCartService;
  final ShoppingCartService _shoppingCartService;

  final ValueNotifier<int> cartCount = ValueNotifier(0);
  final ValueNotifier<ShoppingCartModel> shoppingCartContent = ValueNotifier(ShoppingCartModel(List.empty(), 0));

  void addProductToCart(int productNumber) {
    ShoppingCartModel currentCart = shoppingCartContent.value;
    List<ShoppingCartProductModel> newProductList = List.empty(growable: true);
    newProductList.addAll(currentCart.productList);
    ShoppingCartModel newModel = ShoppingCartModel(newProductList, currentCart.totalMinor);
    // Check if item is in cart, in cart, multiply
    ShoppingCartProductModel? itemFound = newProductList.firstWhereOrNull((model) => model.product.id == productNumber);
    if (itemFound == null) {
      ProductModel? item = dummyData[productNumber];
      if (item == null) {
        throw ErrorDescription('item for shoppingcart not found');
      }
      itemFound = ShoppingCartProductModel(item, 0, 0);
      newProductList.add(itemFound);
    }
    itemFound.qty++;
    itemFound.subtotalMinor += itemFound.product.priceMinor;
    newModel.totalMinor += itemFound.product.priceMinor;
    shoppingCartContent.value = newModel;
    _updateQty();
  }

  void changeProductQty(int productNumber, int qty) {
    if (qty == 0) {
      removeProductFromCart(productNumber);
      return;
    }
    ShoppingCartModel currentCart = shoppingCartContent.value;
    ShoppingCartModel newCart = ShoppingCartModel(List.from(currentCart.productList), currentCart.totalMinor);
    ShoppingCartProductModel product = newCart.productList.firstWhere((product) => product.product.id == productNumber);
    int qtyDelta = qty - product.qty;
    int priceDelta = qtyDelta * product.product.priceMinor;
    product.qty += qtyDelta;
    product.subtotalMinor += priceDelta;
    newCart.totalMinor += priceDelta;
    shoppingCartContent.value = newCart;
    _updateQty();
  }

  void removeProductFromCart(int productNumber) {
    List<ShoppingCartProductModel> newProductList = shoppingCartContent.value.productList.where((product) => product.product.id != productNumber).toList();
    int newTotal = newProductList.fold<int>(0, (total, product) => product.qty * product.product.priceMinor);
    shoppingCartContent.value = ShoppingCartModel(newProductList, newTotal);
    _updateQty();
  }

  void _updateQty() {
    cartCount.value = shoppingCartContent.value.productList.fold<int>(0, (total, item) => total + item.qty);
  }
}