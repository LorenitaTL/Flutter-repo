import 'dart:convert';

import 'package:restaurant_bar_app/global/environment.dart';
import 'package:restaurant_bar_app/models/login_response.dart';
import 'package:restaurant_bar_app/models/mesa.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService with ChangeNotifier {
  Mesa mesa;
  bool _autenticando = false;

  bool get autenticando => this._autenticando;

  //crear storage = new Flutter
  final _storage = new FlutterSecureStorage();

  set autenticando(bool valor) {
    print('Autenticando');
    this._autenticando = valor;
    notifyListeners();
  }

  //Geters del token de forma estática
  static Future<String> getToken() async {
    final _storage = new FlutterSecureStorage();
    final token = await _storage.read(key: 'token');

    return token;
  }

  static Future<void> deleteToken() async {
    final _storage = new FlutterSecureStorage();
    final token = await _storage.delete(key: 'token');
  }

  Future<dynamic> login(String mesa, String mesero) async {
    this.autenticando = true;

    final data = {'mesa': mesa, 'mesero': mesero};

    final resp = await http.post('${Environment.apiUrl}/login',
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    print(resp.body);
    this.autenticando = false;
    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      this.mesa = loginResponse.mesa;

      print('Token');
      print(loginResponse.token);
      this._guardarToken(loginResponse.token);

      return this.mesa;
    } else {
      return false;
    }
  }

  //TODO: guardar token
  Future _guardarToken(String token) async {
    return await _storage.write(key: 'token', value: token);
  }

//TODO: Registrar
  /*Future register(String nombre, String email, String pasword) async {
    this.autenticando = true;

    final data = {'nombre': nombre, 'email': email, 'password': pasword};

    final resp = await http.post('${Environment.apiUrl}/login/new',
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    print(resp.body);
    this.autenticando = false;
    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      this.usuario = loginResponse.usuario;

      await this._guardarToken(loginResponse.token);

      return true;
    } else {
      final respBody = jsonDecode(resp.body);
      return respBody['msg'];
    }
  }*/

  //TODO: Verificar si loggedin()

  /*Future<bool> isLoggedIn() async {
    final token = await this._storage.read(key: 'token');

    final resp = await http.get('${Environment.apiUrl}/login/renew',
        headers: {'Content-Type': 'application/json', 'x-token': token});

    print(resp.body);

    if (resp.statusCode == 200) {
      final loginResponse = loginResponseFromJson(resp.body);
      this.mesa = loginResponse.mesa;

      await this._guardarToken(loginResponse.token);

      return true;
    } else {
      this.logout();
      return false;
    }
  }*/

//TODO: logout
  /*Future logout() async {
    await _storage.delete(key: 'token');
  }*/
}
