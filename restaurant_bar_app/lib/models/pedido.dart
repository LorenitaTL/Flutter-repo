
import 'package:restaurant_bar_app/models/producto.dart';

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
    });

    List<Producto> productos;
    int mesero;
    int total;
    String horaInicio;

    factory ListaPedido.fromJson(Map<String, dynamic> json) => ListaPedido(
        productos: List<Producto>.from(json["productos"].map((x) => Producto.fromJson(x))),
        mesero: json["mesero"],
        total: json["total"],
        horaInicio: json["hora_inicio"],
    );

    Map<String, dynamic> toJson() => {
        "productos": List<dynamic>.from(productos.map((x) => x.toJson())),
        "mesero": mesero,
        "total": total,
        "hora_inicio": horaInicio,
    };
}