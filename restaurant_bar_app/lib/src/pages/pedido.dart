import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;


class Pedido extends StatefulWidget {
  @override
  _PedidoState createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {
  Future<String> _loadJsonAsset() async{
    return await rootBundle.loadString('assets/data/menu.json');
  }

  Future loadJson()async{
    String jsonString = await _loadJsonAsset();
    final jsonResponse = json.decode(jsonString);
    print(jsonResponse['Bebidas']);
  }

  @override
  void initState() {
    loadJson();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
              child: Column(
            children: <Widget>[
              Text('Pedido mesa 1'),
              Container(
                height: 100,
                child: ListView(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[Text('Producto 1'), Text('50')],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[Text('Producto 1'), Text('50')],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[Text('Producto 1'), Text('50')],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[Text('Producto 1'), Text('50')],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
