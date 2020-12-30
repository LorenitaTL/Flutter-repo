import 'dart:ui';

import 'package:bimbomba_application/theme/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/balloons-blue.jpg'),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 200,
                    child: ClipRRect(
                      child: Image.asset('assets/images/bbb.jpg'),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(color: Colors.black87, blurRadius: 5.0)
                    ], borderRadius: BorderRadius.circular(15)),
                  ),
                  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          color: Colors.grey,
                          height: 1,
                          width: MediaQuery.of(context).size.width * 0.2),
                      Container(
                          child: Text('Iniciar sesión',
                              style: TextStyle(color: Colors.grey, fontSize:18))),
                      Container(
                          color: Colors.grey,
                          height: 1,
                          width: MediaQuery.of(context).size.width * 0.2),
                    ],
                  )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: CompanyColors.blue[500],
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(color: Colors.black45, blurRadius: 5.0)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                        Text('FACEBOOK',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: CompanyColors.blue[500],
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(color: Colors.black45, blurRadius: 5.0)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FaIcon(FontAwesomeIcons.google, color: Colors.white),
                        Text('GOOGLE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
