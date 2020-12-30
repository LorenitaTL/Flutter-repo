import 'package:flutter/material.dart';
import 'package:restaurant_bar_app/widgets/headers.dart';

class Ticket extends StatefulWidget {
  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Stack(
        children: <Widget>[
          HeaderMini(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Consumo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.black26,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          3.0, // Move to right 10  horizontally
                          3.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.6,
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '1 Cerveza',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('\$25', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Hamburguesa',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('\$50',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'TOTAL',
                            style: TextStyle(
                                color: Color(0xffffbd59),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          Text(
                            '\$75',
                            style: TextStyle(
                                color: Color(0xffffbd59),
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              RaisedButton.icon(
                onPressed: () => print('Cuenta'),
                icon: Icon(
                  Icons.restaurant,
                  color: Colors.white,
                ),
                label: Text(
                  'Pedir cuenta',
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xffffbd59),
              )
            ],
          )
        ],
      ),
    );
  }
}
