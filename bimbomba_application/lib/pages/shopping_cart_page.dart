import 'package:bimbomba_application/theme/theme.dart';
import 'package:bimbomba_application/widgets/card_items.dart';
import 'package:flutter/material.dart';
import 'package:bimbomba_application/widgets/headers.dart';

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          HeaderWithTitle(title: 'Carrito de compras'),
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: ListView(children: [
                    CardShoppingCart(
                        src: 'assets/images/candy_bar1.jpg',
                        service: 'Candy Bar',
                        date: '12-01-2021',
                        time: '04:00 p.m',
                        price: '1000'),
                    Divider(),
                    CardShoppingCart(
                        src: 'assets/images/candy_bar1.jpg',
                        service: 'Candy Bar',
                        date: '12-01-2021',
                        time: '04:00 p.m',
                        price: '1000'),
                    Divider(),
                    CardShoppingCart(
                        src: 'assets/images/candy_bar1.jpg',
                        service: 'Candy Bar',
                        date: '12-01-2021',
                        time: '04:00 p.m',
                        price: '1000'),
                    Divider(),
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            padding: EdgeInsets.only(right: 10),
                            child: Text('Total:  \$3000',
                                style: TextStyle(
                                    color: CompanyColors.yellow[500],
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)))),
                    Center(
                        child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                color: CompanyColors.blue[400],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 2,
                                      blurRadius: 4.0)
                                ]),
                            child: Text('Proceder al pago',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500))))
                  ])))
        ],
      )),
    );
  }
}
