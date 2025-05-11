import 'package:comp5450_exercise1/data/repositories/product_detail_repository.dart';
import 'package:comp5450_exercise1/data/repositories/product_list_repository.dart';
import 'package:comp5450_exercise1/data/repositories/shopping_cart_repository.dart';
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
 
        // Repository
        Provider(create: (context) => ShoppingCartRepository()),
        Provider(create: (context) => ProductDetailRepository()),
        Provider(create: (context) => ProductListRepository()),
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