import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restaurant_bar_app/global/environment.dart';
import 'package:restaurant_bar_app/models/producto.dart';

class ProductService with ChangeNotifier {
  Future addProduct(Producto producto) async {
    final data = {
      'nombre': producto.nombre,
      'precio': producto.precio,
      'descripcion': producto.descripcion,
      'disponible': producto.disponible
    };
    print(data);
    final resp = await http.post(
        '${Environment.apiUrl}/productos/registrar-producto',
        body: jsonEncode(data),
        headers: {
          'Content-Type': 'application/json',
        });

    print(resp.body);
  }

  Future<List<Producto>> getProducts() async {
    final resp = await http
        .get('${Environment.apiUrl}/productos/', headers: {
      'Content-Type': 'application/json',
    });
  }
}
