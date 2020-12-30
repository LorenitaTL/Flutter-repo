// To parse this JSON data, do
//
//     final meserosResponse = meserosResponseFromJson(jsonString);

import 'dart:convert';
import 'package:restaurant_bar_app/models/mesero.dart';

MeserosResponse meserosResponseFromJson(String str) =>
    MeserosResponse.fromJson(json.decode(str));

String meserosResponseToJson(MeserosResponse data) =>
    json.encode(data.toJson());

class MeserosResponse {
  MeserosResponse({
    this.ok,
    this.meseros,
  });

  bool ok;
  List<Mesero> meseros;

  factory MeserosResponse.fromJson(Map<String, dynamic> json) =>
      MeserosResponse(
        ok: json["ok"],
        meseros:
            List<Mesero>.from(json["meseros"].map((x) => Mesero.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "meseros": List<dynamic>.from(meseros.map((x) => x.toJson())),
      };
}
