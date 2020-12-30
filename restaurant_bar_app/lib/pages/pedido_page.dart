import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bar_app/models/producto.dart';
import 'package:restaurant_bar_app/services/menu_service.dart';

class PedidoPage extends StatefulWidget {
  @override
  _PedidoPageState createState() => _PedidoPageState();
}

class _PedidoPageState extends State<PedidoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MenuService menuService = Provider.of<MenuService>(context);
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
              child: ListView.builder(
                  itemCount: menuService.pedido.length,
                  itemBuilder: (_, i) {
                    return _itemPedido(menuService.pedido[i]);
                  })),
          RaisedButton.icon(
              color: Color(0xffffbd59),
              onPressed: () {
                print('Completar pedido');
                final idsProductos = menuService.pedido.map((e) => e.id).toList();
                menuService.nuevoPedido(
                    idsProductos, '5f5b7e6930ea6ff31440d681');
              },
              icon: Icon(
                Icons.send,
                color: Colors.white,
              ),
              label: Text(
                'Completar pedido',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }

  Container _itemPedido(Producto producto) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          //TODO:Agregar opción para eliminar item del pedido
          // Text(
          //   producto.id,
          //   style: TextStyle(
          //     color: Colors.white,
          //   ),
          // ),
          Text(
            producto.nombre,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            '\$${producto.precio}',
            style: TextStyle(
                color: Color(0xffffbd59),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
