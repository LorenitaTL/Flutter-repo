// To parse this JSON data, do
//
//     final menuResponse = menuResponseFromJson(jsonString);

import 'dart:convert';
import 'package:restaurant_bar_app/models/mesa.dart';

MesaResponse mesaResponseFromJson(String str) =>
    MesaResponse.fromJson(json.decode(str));

String mesaResponseToJson(MesaResponse data) => json.encode(data.toJson());

class MesaResponse {
  MesaResponse({
    this.ok,
    this.mesas,
  });

  bool ok;
  List<Mesa> mesas;

  factory MesaResponse.fromJson(Map<String, dynamic> json) => MesaResponse(
        ok: json["ok"],
        mesas: List<Mesa>.from(json["mesas"].map((x) => Mesa.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "mesas": List<dynamic>.from(mesas.map((x) => x.toJson())),
      };
}
