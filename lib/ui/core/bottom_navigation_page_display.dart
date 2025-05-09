import 'package:comp5450_exercise1/ui/core/bottom_navigation_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationPageDisplayScaffold extends StatelessWidget {

  const BottomNavigationPageDisplayScaffold({super.key});
    
  @override
  Widget build(BuildContext context) {
    final BottomNavigationPageViewModel viewModel = context.watch();
    return(Scaffold(
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