import 'package:bimbomba_application/pages/add_to_cart_page.dart';
import 'package:bimbomba_application/pages/categories_page.dart';
import 'package:bimbomba_application/pages/details_service_page.dart';
import 'package:bimbomba_application/pages/form_service_page.dart';
import 'package:bimbomba_application/pages/list_provs_page.dart';
import 'package:bimbomba_application/pages/login_page.dart';
import 'package:bimbomba_application/pages/my_services_page.dart';
import 'package:bimbomba_application/pages/profile_data_page.dart';
import 'package:bimbomba_application/pages/search_page.dart';
import 'package:bimbomba_application/pages/shopping_cart_page.dart';
import 'package:flutter/material.dart';
import 'package:bimbomba_application/theme/theme.dart' as Theme;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Theme.CompanyThemeData,
      home: ShoppingCartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
