import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restaurant_bar_app/global/environment.dart';
import 'package:restaurant_bar_app/models/mesas_response.dart';

class MesasService with ChangeNotifier {
  Future getMesas() async {
    final resp = await http.post('${Environment.apiUrl}/mesas/filtrar-mesas',
        body: jsonEncode({'type': 'service'}),
        headers: {'Content-Type': 'application/json'});

    final mesasResponse = mesaResponseFromJson(resp.body);

    return mesasResponse.mesas;
  }
}
