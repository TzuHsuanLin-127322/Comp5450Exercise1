import 'package:comp5450_exercise1/ui/core/bottom_navigation_page_view_model.dart';
import 'package:flutter/material.dart';

class BottomNavigationPageDisplayScaffold extends StatefulWidget {
  const BottomNavigationPageDisplayScaffold({super.key, required BottomNavigationPageViewModel bottomNavigationPageDisplayViewModel})
    : _bottomNavigationPageDisplayViewModel = bottomNavigationPageDisplayViewModel;

  final _bottomNavigationPageDisplayViewModel;
  
  @override
  State<BottomNavigationPageDisplayScaffold> createState() => _BottomNavigationPageDisplayScaffoldState();
}

class _BottomNavigationPageDisplayScaffoldState extends State<BottomNavigationPageDisplayScaffold>{
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return(Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
        BottomNavigationBarItem(
          icon: Badge(
            label: null,
            isLabelVisible: false,
            child: Icon(Icons.shopping_cart),
            ),
          label: 'Cart'
        ),
      ],
      currentIndex: _selectedTab,
      onTap: _onItemTap,),
    ));
  }

  void _onItemTap(int index) {
    setState(() => _selectedTab = index);
  }

}

