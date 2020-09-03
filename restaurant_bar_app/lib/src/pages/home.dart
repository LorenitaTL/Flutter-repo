import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurant_bar_app/src/widgets/headers.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.black87,
                  Colors.black54,
                  Colors.black45,
                  Colors.black26,
                ],
                stops: [0.1, 0.2, 0.7, 0.9],
              )),
            ),
            //HeaderHome(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Color(0xffffbd59),
                          ),
                          onPressed: null),
                      Text(
                        'Mesa 1',
                        style: TextStyle(
                            color: Color(0xffffbd59),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.restaurant,
                            color: Color(0xffffbd59),
                          ),
                          onPressed: null),
                    ],
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/logo.jpg')),
                  flex: 5,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'CATEGORÍAS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(
                                color: Colors.white24,
                                blurRadius: 5,
                                offset: Offset(2.0, 2.0)),
                            Shadow(
                                color: Colors.white24,
                                blurRadius: 5,
                                offset: Offset(-2.0, -2.0))
                          ]),
                    ),
                    height: double.maxFinite,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      _itemCategory('Bebidas', 'assets/images/beer.jpg'),
                      _itemCategory('Platillos', 'assets/images/burger.jpg'),
                    ],
                  ),
                  flex: 4,
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      _itemCategory(
                          'Especialidades', 'assets/images/sushi.jpg'),
                      _itemCategory('Postres', 'assets/images/postres.jpg')
                    ],
                  ),
                  flex: 4,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'PROMOS',
                        style: TextStyle(
                            color: Color(0xffffbd59),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          height: 90,
                          child: new ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              _itemPromo(
                                  'Cerveza 2x1', 'assets/images/beer.jpg'),
                              _itemPromo('Hamburguesa con papas',
                                  'assets/images/food.jpg'),
                              _itemPromo(
                                  'Sushi + cerveza', 'assets/images/sushi.jpg'),
                              _itemPromo(
                                  'Postre gratis', 'assets/images/postres.jpg'),
                            ],
                          ))
                    ],
                  ),
                  flex: 4,
                )
              ],
            )
          ],
        ));
  }

  Container _itemPromo(promo, src) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      width: 160.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(src), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[700].withOpacity(0.4),
            ),
          ),
          Container(
              alignment: Alignment.center,
              child: Text(promo,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20))),
        ],
      ),
    );
  }

  Expanded _itemCategory(category, src) {
    return Expanded(
        flex: 1,
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: double.maxFinite,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.white24,
              blurRadius: 4.0,
              spreadRadius: 1.0,
              offset: Offset(
                3.0,
                3.0,
              ),
            )
          ], color: Color(0xffffbd59), borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: <Widget>[
              ClipRRect(
                child: Image.asset(src),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    category,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
        ));
  }
}
