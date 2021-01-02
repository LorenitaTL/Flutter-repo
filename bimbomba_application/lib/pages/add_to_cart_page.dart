import 'package:bimbomba_application/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:bimbomba_application/widgets/headers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddToCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Column(
          children: [
            LogoHeader(),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5.0),
                        ]),
                    child: Column(
                      children: [
                        Expanded(
                            child: Stack(children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      image: DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/images/pinata.jpg'),
                                          fit: BoxFit.cover))),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(10),
                                    width: double.maxFinite,
                                    child: Text(
                                      'Service',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[700].withOpacity(0.6),
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              )
                            ]),
                            flex: 1),
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey, blurRadius: 5.0),
                                    ]),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Hora',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              icon: FaIcon(
                                                FontAwesomeIcons.clock,
                                              )),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Fecha',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              icon: FaIcon(
                                                FontAwesomeIcons.calendar,
                                              )),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: TextFormField(
                                          maxLines: 5,
                                          decoration: InputDecoration(
                                              hintText: 'Observaciones',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              icon: FaIcon(
                                                FontAwesomeIcons.pen,
                                              )),
                                        ),
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          margin: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              color: CompanyColors.orange[200],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    spreadRadius: 2,
                                                    blurRadius: 4.0)
                                              ]),
                                          child: Text('Agregar al carrito',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight:
                                                      FontWeight.w500))),
                                    ],
                                  ),
                                )),
                            flex: 2)
                      ],
                    )))
          ],
        )));
  }
}
