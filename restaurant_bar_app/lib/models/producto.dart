class Producto {
    Producto({
        this.id,
        this.nombre,
        this.descripcion,
        this.precio,
        this.disponible,
    });

    String id;
    String nombre;
    String descripcion;
    double precio;
    bool disponible;

    factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        id: json["_id"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        precio: json["precio"].toDouble(),
        disponible: json["disponible"] == null ? null : json["disponible"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "nombre": nombre,
        "descripcion": descripcion,
        "precio": precio,
        "disponible": disponible == null ? null : disponible,
    };
}