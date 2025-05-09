import 'package:comp5450_exercise1/data/repositories/shopping_cart_repository.dart';
import 'package:flutter/material.dart';

class BottomNavigationPageViewModel extends ChangeNotifier{
  late final ShoppingCartRepository _shoppingCartRepository;
  late List<BottomNavigationBarItemModel> _navBarItems;
  int _selectedTab = 0;
  int _shoppingCartItemCount = 0;
  
  BottomNavigationPageViewModel({required ShoppingCartRepository shoppingCartRepository}) {
    _shoppingCartRepository = shoppingCartRepository;
    _buildNavBarItemModels();
  }

  void _buildNavBarItemModels() {
    _navBarItems = [
      BottomNavigationBarItemModel(icon: Icons.store, label: 'Store'),
      BottomNavigationBarItemModel(
        icon: Icons.shopping_cart,
        label: 'Cart',
        badgeLabel: _shoppingCartItemCount == 0 ? '' : _shoppingCartItemCount.toString(),
        displayBadgeLabel: _shoppingCartItemCount != 0)
    ];
  }

  void onTabSelected(int index) {
    _selectedTab = index;
    print(_selectedTab);
    notifyListeners();
  }
  

  int get selectedTab => _selectedTab;
  List<BottomNavigationBarItemModel> get bottomNavBarItems => _navBarItems;
  
}

class BottomNavigationBarItemModel{
  final IconData icon;
  final String label;
  final String badgeLabel;
  final bool displayBadgeLabel;
  
  BottomNavigationBarItemModel({
    required this.icon,
    required this.label,
    this.badgeLabel = '',
    this.displayBadgeLabel = false
  });
}