import 'package:restaurant_bar_app/models/mesero.dart';

class Mesa {
  Mesa({
    this.mesero,
    this.ocupada,
    this.id,
    this.mesa,
    this.type,
  });

  List<Mesero> mesero;
  bool ocupada;
  String id;
  String mesa;
  String type;

  factory Mesa.fromJson(Map<String, dynamic> json) => Mesa(
        mesero:
            List<Mesero>.from(json["mesero"].map((x) => Mesero.fromJson(x))),
        ocupada: json["ocupada"],
        id: json["_id"],
        mesa: json["mesa"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "mesero": List<dynamic>.from(mesero.map((x) => x.toJson())),
        "ocupada": ocupada,
        "_id": id,
        "mesa": mesa,
        "type": type,
      };
}
