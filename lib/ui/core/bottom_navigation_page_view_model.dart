import 'package:comp5450_exercise1/data/repositories/shopping_cart_repository.dart';
import 'package:flutter/material.dart';

class BottomNavigationPageViewModel extends ChangeNotifier{
  late final ShoppingCartRepository _shoppingCartRepository;
  late final VoidCallback _repositoryCallback;
  late List<BottomNavigationBarItemModel> _navBarItems;
  int _selectedTab = 0;
  int _shoppingCartItemCount = 0;
  
  BottomNavigationPageViewModel({required ShoppingCartRepository shoppingCartRepository}) {
    _shoppingCartRepository = shoppingCartRepository;
    _buildNavBarItemModels();
    _repositoryCallback = () => _onCartItemCountChange();
    _shoppingCartRepository.cartCount.addListener(_repositoryCallback);
    _onCartItemCountChange();
  }

  void _onCartItemCountChange(){
    if (_shoppingCartItemCount == _shoppingCartRepository.cartCount.value){
      return;
    }
    _shoppingCartItemCount = _shoppingCartRepository.cartCount.value;
    _buildNavBarItemModels();
    notifyListeners();
  }

  void _buildNavBarItemModels() {
    String finalCountLabel = _shoppingCartItemCount.toString();
    if (_shoppingCartItemCount == 0){
      finalCountLabel = '';
    } else if (_shoppingCartItemCount >= 10) {
      finalCountLabel = '9+';
    }
    _navBarItems = [
      BottomNavigationBarItemModel(icon: Icons.store, label: 'Store', navigationKey: 'store'),
      BottomNavigationBarItemModel(
        icon: Icons.shopping_cart,
        label: 'Cart',
        badgeLabel: finalCountLabel,
        displayBadgeLabel: _shoppingCartItemCount != 0,
        navigationKey: 'cart'  
      )
    ];
  }

  void onTabSelected(int index) {
    _selectedTab = index;
    notifyListeners();
  }

  @override
  void dispose() {
    _shoppingCartRepository.cartCount.removeListener(_repositoryCallback);
    super.dispose();
  }
  

  int get selectedTab => _selectedTab;
  List<BottomNavigationBarItemModel> get bottomNavBarItems => _navBarItems;
  
}

class BottomNavigationBarItemModel{
  final IconData icon;
  final String label;
  final String badgeLabel;
  final bool displayBadgeLabel;
  final String navigationKey;
  
  BottomNavigationBarItemModel({
    required this.icon,
    required this.label,
    required this.navigationKey,
    this.badgeLabel = '',
    this.displayBadgeLabel = false
  });
}