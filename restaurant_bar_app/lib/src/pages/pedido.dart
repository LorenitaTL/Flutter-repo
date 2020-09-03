import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class Pedido extends StatefulWidget {
  @override
  _PedidoState createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {
  Future<String> _loadJsonAsset() async {
    return await rootBundle.loadString('assets/data/menu.json');
  }

  Future loadJson() async {
    String jsonString = await _loadJsonAsset();
    final jsonResponse = json.decode(jsonString);
    print(jsonResponse['Bebidas']);
  }

  @override
  void initState() {
//    loadJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('add'),
        backgroundColor: Colors.grey[600],
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: Colors.black87,
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/food.jpg',
                  ),
                ),
              ),
              height: 200.0,
            ),
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.grey.withOpacity(0.1),
                        Colors.black87,
                      ],
                      stops: [
                        0.0,
                        1.0
                      ])),
            ),
            Container(
              height: 150,
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black87, blurRadius: 5.0)
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffffbd59)),
                child: Text(
                  'MI PEDIDO',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: null),
                ],
              ),
            )
          ]),
          Container(
            height: 400,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Producto 1',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        '\$22.00',
                        style: TextStyle(
                            color: Color(0xffffbd59),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Producto 2',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        '\$50.00',
                        style: TextStyle(
                            color: Color(0xffffbd59),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Producto 3',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        '\$37.00',
                        style: TextStyle(
                            color: Color(0xffffbd59),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                )
                /*ItemCategory(),
                ItemCategory(),
                ItemCategory(),
                ItemCategory(),
                ItemCategory(),*/
              ],
            ),
          ),
          RaisedButton.icon(
            color: Color(0xffffbd59),
              onPressed: () => print('Completar pedido'),
              icon: Icon(Icons.send, color: Colors.white,),
              label: Text('Completar pedido', style: TextStyle(color: Colors.white),))
        ],
      ),
      /*Stack(
        children: <Widget>[
          Container(
            color: Color(0xffffbd59),
            //height: 250,
            child: Image.asset('assets/images/food.jpg'),
          ),
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
      ),*/
    );
  }
}
