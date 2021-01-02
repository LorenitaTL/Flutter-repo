import 'package:bimbomba_application/pages/my_services_page.dart';
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
      home: MyServicesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
