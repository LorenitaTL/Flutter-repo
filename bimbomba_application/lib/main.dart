import 'package:bimbomba_application/pages/categories_page.dart';
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
      home: CategoriesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
