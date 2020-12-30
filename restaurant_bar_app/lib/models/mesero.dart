class Mesero {
  Mesero({
    this.id,
    this.usuario,
    this.nombre,
    this.apellidos,
    this.type,
  });

  String id;
  String usuario;
  String nombre;
  String apellidos;
  String type;

  factory Mesero.fromJson(Map<String, dynamic> json) => Mesero(
        id: json["_id"],
        usuario: json["usuario"],
        nombre: json["nombre"],
        apellidos: json["apellidos"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "usuario": usuario,
        "nombre": nombre,
        "apellidos": apellidos,
        "type": type,
      };
}
