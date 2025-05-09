import 'package:comp5450_exercise1/ui/core/bottom_navigation_page_view_model.dart';
import 'package:comp5450_exercise1/ui/productList/product_list_display.dart';
import 'package:comp5450_exercise1/ui/shoppingCart/shopping_cart_display.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationPageDisplayScaffold extends StatelessWidget {

  BottomNavigationPageDisplayScaffold({super.key});

  final Map<String, BottomNavPageConfig> _bottomNavPageConfigs = {
    'store': BottomNavPageConfig(
      navigatorKey: GlobalKey<NavigatorState>(),
      builder: (context) => ProductListDisplay(),
    ),
    'cart': BottomNavPageConfig(
      navigatorKey: GlobalKey<NavigatorState>(),
      builder: (context) => ShoppingCartDisplay(),
    ),
  };

  @override
  Widget build(BuildContext context) {
    final BottomNavigationPageViewModel viewModel = context.watch();
    return(Scaffold(
      body: IndexedStack(
        index: viewModel.selectedTab,
        children: viewModel.bottomNavBarItems.map((item) {

          return (Navigator(
            key: _bottomNavPageConfigs[item.navigationKey]?.navigatorKey,
            onGenerateInitialRoutes: (navigator, initialRoute) {
              return [MaterialPageRoute(builder: (context) => _bottomNavPageConfigs[item.navigationKey]!.builder(context))];
            },
          ));
        }).toList()
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: viewModel.bottomNavBarItems.map((item) {
          return (BottomNavigationBarItem(
            icon: Badge(
              label: Text(item.badgeLabel),
              isLabelVisible: item.displayBadgeLabel,
              child: Icon(item.icon)
            ),
            label: item.label
          ));
        }).toList(),
        currentIndex: viewModel.selectedTab,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap:viewModel.onTabSelected
      ) 
    ));
  }


}

class BottomNavPageConfig {
  final GlobalKey<NavigatorState> navigatorKey;
  final Widget Function(BuildContext context) builder;

  BottomNavPageConfig({
    required this.navigatorKey,
    required this.builder,
  });
}