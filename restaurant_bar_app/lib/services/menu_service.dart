import 'dart:convert';

import 'package:restaurant_bar_app/global/environment.dart';
import 'package:restaurant_bar_app/models/menu.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:restaurant_bar_app/models/menu_response.dart';
import 'package:restaurant_bar_app/models/producto.dart';

class MenuService with ChangeNotifier {
  String title = "Cat";
  String subSelect = "";
  String categoriaSeleccionada = "Bebidas";
  List<Producto> productos = [
    Producto(nombre: 'Corona', precio: 15, id: '5f626f4aac4e23a743613ba0'),
    Producto(nombre: 'Modelo', precio: 18, id: '5f627045ab050018cfb0df6a'),
    Producto(nombre: 'Heineken', precio: 20, id: '5f626fa5ab050018cfb0df67'),
    Producto(nombre: 'Tecate', precio: 15, id: '5f626fbcab050018cfb0df68')
  ];

  List<String> categorias = [];
  List productosCategoria = [1, 2, 3];

  List<Producto> pedido = [];

  Future<List<Menu>> getMenu() async {
    final resp = await http.get('${Environment.apiUrl}/menu', headers: {
      'Content-Type': 'application/json',
    });

    final menuResponse = menuResponseFromJson(resp.body);

    //print("Response");
    return menuResponse.menu;
  }

  Future getCategories() async {
    final categories = await getMenu();
    print('Cat');
    final cat = categories.map((e) => e.nombreCategoria).toList();
    return cat;
  }

  Future getSubcategories(category) async {
    List<Subcategoria> listSub;
    final categories = await getMenu();
    for (var item in categories) {
      if (item.nombreCategoria == category) {
        listSub = item.subcategorias.toList();
      }
    }
    return listSub;
  }

  Future nuevoPedido(productos, String mesa) async {
    final data = {'mesa': mesa, 'productos': productos};

    print('Pedido');
    print(data);

    final resp = await http.post('${Environment.apiUrl}/pedido/nuevo-pedido',
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    print(resp.body);
  }
}
