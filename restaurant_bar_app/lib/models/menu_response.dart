// To parse this JSON data, do
//
//     final menuResponse = menuResponseFromJson(jsonString);

import 'dart:convert';
import 'package:restaurant_bar_app/models/menu.dart';

MenuResponse menuResponseFromJson(String str) => MenuResponse.fromJson(json.decode(str));

String menuResponseToJson(MenuResponse data) => json.encode(data.toJson());

class MenuResponse {
    MenuResponse({
        this.ok,
        this.menu,
    });

    bool ok;
    List<Menu> menu;

    factory MenuResponse.fromJson(Map<String, dynamic> json) => MenuResponse(
        ok: json["ok"],
        menu: List<Menu>.from(json["menu"].map((x) => Menu.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "ok": ok,
        "menu": List<dynamic>.from(menu.map((x) => x.toJson())),
    };
}







