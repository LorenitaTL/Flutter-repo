import 'package:restaurant_bar_app/global/environment.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_bar_app/services/auth_service.dart';

import 'package:socket_io_client/socket_io_client.dart' as IO;

enum ServerStatus { Online, Offline, Connecting }

class SocketService with ChangeNotifier {
  ServerStatus _serverStatus = ServerStatus.Connecting;
  IO.Socket _socket;

  ServerStatus get serverStatus => this._serverStatus;

  IO.Socket get socket => this._socket;
  Function get emit => this._socket.emit;

  void connect() async {
    //TODO: Agregar token al iniciar sesión
    final token = await AuthService.getToken();
    // Dart client
    this._socket = IO.io(Environment.socketUrl, {
      'transports': ['websocket'],
      'autoConnect': true,
      'forceNew': true,
      'extraHeaders': {'x-token': token}
    });

    this._socket.on('connect', (_) {
      this._serverStatus = ServerStatus.Online;
      print('Mesa ocupada');
      notifyListeners();
    });

    this._socket.on('disconnect', (_) {
      this._serverStatus = ServerStatus.Offline;
      print('Servidor desconectado');
      notifyListeners();
    });
  }

  void disconnect() {
    this._socket.disconnect();
  }
}
