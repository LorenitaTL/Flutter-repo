import 'package:flutter/material.dart';
import 'package:restaurant_bar_app/src/widgets/items.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'assets/images/beer.jpg',
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
                        Colors.grey.withOpacity(0.4),
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
              child: Text(
                'BEBIDAS',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 25),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: null),
                  IconButton(icon: Icon(Icons.restaurant, color: Colors.white,), onPressed: null),
                ],
              ),
            )
          ]),
          Container(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.blur_circular,
                        size: 40,
                        color: Colors.white70,
                      ),
                      Text(
                        'Cervezas',
                        style: TextStyle(color: Colors.white70),
                      ),
                      Container(
                        height: 2,
                        color: Colors.white70,
                      )
                    ],
                  ),
                  width: 80,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  width: 80,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.bubble_chart,
                        size: 40,
                        color: Color(0xffffbd59),
                      ),
                      Text(
                        'Shots',
                        style: TextStyle(color: Color(0xffffbd59)),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  width: 80,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.blur_circular,
                        size: 40,
                        color: Color(0xffffbd59),
                      ),
                      Text(
                        'Servicios',
                        style: TextStyle(color: Color(0xffffbd59)),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  width: 80,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.blur_circular,
                        size: 40,
                        color: Color(0xffffbd59),
                      ),
                      Text(
                        'Sin Alcohol',
                        style: TextStyle(color: Color(0xffffbd59)),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                ItemCategory(),
                ItemCategory(),
                ItemCategory(),
                ItemCategory(),
                ItemCategory(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
