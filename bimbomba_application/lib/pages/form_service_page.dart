import 'package:bimbomba_application/theme/theme.dart';
import 'package:bimbomba_application/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWithTitle(title: 'Nuevo servicio'),
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
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.all(10),
                                    //width: double.maxFinite,
                                    child: Icon(Icons.add_a_photo, color: Colors.white),
                                    decoration: BoxDecoration(
                                      color: CompanyColors.yellow[500].withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              )
                            ]),
                            flex: 2),
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
                                            horizontal: 10, vertical: 3),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Nombre',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              icon: FaIcon(
                                                FontAwesomeIcons.gift,
                                              )),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 3),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Precio',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              icon: FaIcon(
                                                FontAwesomeIcons.handHoldingUsd,
                                              )),
                                        ),
                                      ),
                                       Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 3),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Ubicación',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              icon: FaIcon(
                                                FontAwesomeIcons.mapMarkedAlt,
                                              )),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 3),
                                        child: TextFormField(
                                          maxLines: 2,
                                          decoration: InputDecoration(
                                              hintText: 'Descripción',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              icon: FaIcon(
                                                FontAwesomeIcons.pen,
                                              )),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 3),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Porcentaje',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              icon: FaIcon(
                                                FontAwesomeIcons.percentage,
                                              )),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 3),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Cantidad de Personas',
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              icon: FaIcon(
                                                FontAwesomeIcons.userFriends,
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
                                          child: Text('Guardar datos',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight:
                                                      FontWeight.w500))),
                                    ],
                                  ),
                                )),
                            flex: 5)
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
