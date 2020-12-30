import 'package:restaurant_bar_app/models/producto.dart';

class Menu {
    Menu({
        this.subcategorias,
        this.nombreCategoria,
        this.uid,
    });

    List<Subcategoria> subcategorias;
    String nombreCategoria;
    String uid;

    factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        subcategorias: List<Subcategoria>.from(json["subcategorias"].map((x) => Subcategoria.fromJson(x))),
        nombreCategoria: json["nombre_categoria"],
        uid: json["uid"],
    );

    Map<String, dynamic> toJson() => {
        "subcategorias": List<dynamic>.from(subcategorias.map((x) => x.toJson())),
        "nombre_categoria": nombreCategoria,
        "uid": uid,
    };
}

class Subcategoria {
    Subcategoria({
        this.nombreSubcategoria,
        this.productos,
        this.id,
    });

    String nombreSubcategoria;
    List<Producto> productos;
    String id;

    factory Subcategoria.fromJson(Map<String, dynamic> json) => Subcategoria(
        nombreSubcategoria: json["nombre_subcategoria"],
        productos: List<Producto>.from(json["productos"].map((x) => Producto.fromJson(x))),
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "nombre_subcategoria": nombreSubcategoria,
        "productos": List<dynamic>.from(productos.map((x) => x.toJson())),
        "_id": id,
    };
}