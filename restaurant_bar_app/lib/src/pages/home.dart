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
            HeaderHome(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 80,
                  color: Color(0xffffbd59),
                  child: Text(
                    'Mesa 1',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Expanded(
                  child: Image.asset('assets/images/logo-bar.png'),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'CATEGORÍAS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    height: double.maxFinite,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                            height: double.maxFinite,
                            decoration: BoxDecoration(
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  child:
                                      Image.asset('assets/images/burger.jpg'),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                ),
                                Text('Platillos')
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                            height: double.maxFinite,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4.0, // soften the shadow
                                    spreadRadius: 1.0, //extend the shadow
                                    offset: Offset(
                                      3.0,
                                      3.0,
                                    ),
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  child: Image.asset('assets/images/beer.jpg'),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                ),
                                Text('Bebidas')
                              ],
                            ),
                          ))
                    ],
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 30),
                            height: double.maxFinite,
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  child: Image.asset('assets/images/sushi.jpg'),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                ),
                                Text('Nuevas especialidades')
                              ],
                            ),
                            decoration: BoxDecoration(
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 30),
                            height: double.maxFinite,
                            decoration: BoxDecoration(
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  child:
                                      Image.asset('assets/images/postres.jpg'),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                ),
                                Text('Postres')
                              ],
                            ),
                          ))
                    ],
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('PROMOS', style: TextStyle(color: Color(0xffffbd59), fontWeight: FontWeight.w600),),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          height: 115,
                          child: new ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(5),
                                width: 160.0,
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      child: Image.asset(
                                          'assets/images/postres.jpg'),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Text('Promo 1')
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(5),
                                width: 160.0,
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      child: Image.asset(
                                          'assets/images/postres.jpg'),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Text('Promo 1')
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(5),
                                width: 160.0,
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      child: Image.asset(
                                          'assets/images/postres.jpg'),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Text('Promo 1')
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(5),
                                width: 160.0,
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      child: Image.asset(
                                          'assets/images/postres.jpg'),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    Text('Promo 1')
                                  ],
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                  flex: 3,
                )
              ],
            )
          ],
        ));
  }
}
