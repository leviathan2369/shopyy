import 'package:flutter/material.dart';
import 'package:shopyy/common/widgets/bottom_bar.dart';
import 'package:shopyy/features/admin/screens/add_product_screen.dart';
import 'package:shopyy/features/adress/screens/adresse_screen.dart';
import 'package:shopyy/features/auth/screens/auth_screen.dart';
import 'package:shopyy/features/home/screen/category_deals_screen.dart';
import 'package:shopyy/features/home/screen/home_screen.dart';
import 'package:shopyy/features/product_details/screens/product_detail_screen.dart';
import 'package:shopyy/features/search/screens/search_screen.dart';

import 'models/product.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
       case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );

    case AddProductScreen.routeName:
      return  MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return  MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>  CategoryDealsScreen(category: category ,),
      );
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String ;
      return  MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>  SearchScreen(searchQuery: searchQuery ,),
      );
    case ProductDetailsScreen.routeName:
      var product = routeSettings.arguments as Product ;
      return  MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>  ProductDetailsScreen(product : product,),
      );
    case AddressScreen.routeName:
      var totalAmount = routeSettings.arguments as String ;
      return  MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>   AddressScreen(totalAmount: totalAmount,),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('404 Error'),
          ),
        ),
      );
  }
}
