import 'package:flutter/material.dart';
import 'package:restaurant_bar_app/pages/add_product_page.dart';
import 'package:restaurant_bar_app/pages/category_page_client.dart';
import 'package:restaurant_bar_app/pages/home_page_client.dart';
import 'package:restaurant_bar_app/pages/login_page.dart';
import 'package:restaurant_bar_app/pages/pedido_page.dart';
import 'package:restaurant_bar_app/pages/products_page.dart';
import 'package:restaurant_bar_app/pages/tables_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'home_client': (_) => HomePageClient(),
  'login': (_) => LoginPage(),
  'add_product': (_) => AddProductPage(),
  'products': (_) => ProductsPage(),
  'category': (_) => CategoryPage(),
  'pedido': (_) => PedidoPage(),
  'tables': (_) => TablesPage(),
};
