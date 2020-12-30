// To parse this JSON data, do
//
//     final pedidoResponse = pedidoResponseFromJson(jsonString);

import 'dart:convert';

import 'package:restaurant_bar_app/models/producto.dart';

PedidoResponse pedidoResponseFromJson(String str) => PedidoResponse.fromJson(json.decode(str));

String pedidoResponseToJson(PedidoResponse data) => json.encode(data.toJson());

class PedidoResponse {
    PedidoResponse({
        this.ok,
        this.pedidosMesas,
    });

    bool ok;
    List<PedidosMesa> pedidosMesas;

    factory PedidoResponse.fromJson(Map<String, dynamic> json) => PedidoResponse(
        ok: json["ok"],
        pedidosMesas: List<PedidosMesa>.from(json["pedidos_mesas"].map((x) => PedidosMesa.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "ok": ok,
        "pedidos_mesas": List<dynamic>.from(pedidosMesas.map((x) => x.toJson())),
    };
}

class PedidosMesa {
    PedidosMesa({
        this.mesa,
        this.listaPedidos,
        this.pedidos,
        this.uid,
    });

    String mesa;
    List<ListaPedido> listaPedidos;
    List<dynamic> pedidos;
    String uid;

    factory PedidosMesa.fromJson(Map<String, dynamic> json) => PedidosMesa(
        mesa: json["mesa"],
        listaPedidos: List<ListaPedido>.from(json["lista_pedidos"].map((x) => ListaPedido.fromJson(x))),
        pedidos: List<dynamic>.from(json["pedidos"].map((x) => x)),
        uid: json["uid"],
    );

    Map<String, dynamic> toJson() => {
        "mesa": mesa,
        "lista_pedidos": List<dynamic>.from(listaPedidos.map((x) => x.toJson())),
        "pedidos": List<dynamic>.from(pedidos.map((x) => x)),
        "uid": uid,
    };
}

class ListaPedido {
    ListaPedido({
        this.productos,
        this.mesero,
        this.total,
        this.horaInicio,
        this.id,
    });

    List<Producto> productos;
    int mesero;
    int total;
    String horaInicio;
    String id;

    factory ListaPedido.fromJson(Map<String, dynamic> json) => ListaPedido(
        productos: List<Producto>.from(json["productos"].map((x) => Producto.fromJson(x))),
        mesero: json["mesero"],
        total: json["total"],
        horaInicio: json["hora_inicio"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "productos": List<dynamic>.from(productos.map((x) => x.toJson())),
        "mesero": mesero,
        "total": total,
        "hora_inicio": horaInicio,
        "_id": id,
    };
}


