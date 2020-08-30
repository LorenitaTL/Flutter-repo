import 'package:flutter/material.dart';
import 'package:restaurant_bar_app/src/pages/category.dart';
import 'package:restaurant_bar_app/src/pages/home.dart';
import 'package:restaurant_bar_app/src/pages/pedido.dart';
import 'package:restaurant_bar_app/src/pages/ticket.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'NanumGothic',
        primarySwatch: Colors.blue,
      ),
      home: Pedido(),
    );
  }
}
