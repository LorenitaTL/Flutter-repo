// To parse this JSON data, do
//
//     final productoResponse = productoResponseFromJson(jsonString);

import 'dart:convert';

import 'package:restaurant_bar_app/models/producto.dart';

ProductoResponse productoResponseFromJson(String str) =>
    ProductoResponse.fromJson(json.decode(str));

String productoResponseToJson(ProductoResponse data) =>
    json.encode(data.toJson());

class ProductoResponse {
  ProductoResponse({
    this.ok,
    this.productos,
  });

  bool ok;
  List<Producto> productos;

  factory ProductoResponse.fromJson(Map<String, dynamic> json) =>
      ProductoResponse(
        ok: json["ok"],
        productos: List<Producto>.from(
            json["productos"].map((x) => Producto.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "productos": List<dynamic>.from(productos.map((x) => x.toJson())),
      };
}
