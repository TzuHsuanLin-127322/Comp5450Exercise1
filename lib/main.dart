import 'package:comp5450_exercise1/data/repositories/product_detail_repository.dart';
import 'package:comp5450_exercise1/data/repositories/product_list_repository.dart';
import 'package:comp5450_exercise1/data/repositories/shopping_cart_repository.dart';
import 'package:comp5450_exercise1/data/services/product_detail_service.dart';
import 'package:comp5450_exercise1/data/services/product_list_service.dart';
import 'package:comp5450_exercise1/data/services/shopping_cart_service.dart';
import 'package:comp5450_exercise1/ui/core/bottom_navigation_page_display.dart';
import 'package:comp5450_exercise1/ui/core/bottom_navigation_page_view_model.dart';
import 'package:comp5450_exercise1/ui/productList/product_list_view_model.dart';
import 'package:comp5450_exercise1/ui/shoppingCart/shopping_cart_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        // Services
        Provider.value(value: ProductDetailService()),
        Provider.value(value: ProductListService()),
        Provider.value(value: ShoppingCartService()), 
        // Repository
        Provider(create: (context) => ShoppingCartRepository(shoppingCartService: context.read())),
        Provider(create: (context) => ProductDetailRepository(productDetailService: context.read())),
        Provider(create: (context) => ProductListRepository(productListService: context.read())),
        // ViewModel
        ChangeNotifierProvider(create: (context) => BottomNavigationPageViewModel(shoppingCartRepository: context.read())),
        ChangeNotifierProvider(create: (context) => ProductListViewModel(
          productListRepository: context.read(),
          shoppingCartRepository: context.read()
        )),
        ChangeNotifierProvider(create: (context) => ShoppingCartViewModel(shoppingCartRepository: context.read()))
      ],
      child: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BottomNavigationPageDisplayScaffold(),
    );
  }
}