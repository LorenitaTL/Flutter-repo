import 'package:bimbomba_application/theme/theme.dart';
import 'package:bimbomba_application/widgets/button_menu.dart';
import 'package:bimbomba_application/widgets/input_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 170,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        CompanyColors.blue[25],
                        CompanyColors.blue[100]
                      ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black38, blurRadius: 5.0)
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ButtonMenu(),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.all(10),
                              child: InputForm(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: TextFormField(
                                      style: TextStyle(color: Colors.grey[700]),
                                      decoration: InputDecoration(
                                          icon: FaIcon(FontAwesomeIcons.user,
                                              color: Colors.grey),
                                          hintText: 'Nombre',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none)))),
                        ),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: FaIcon(FontAwesomeIcons.shoppingCart,
                                color: Colors.white)),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 50,
                        child: Image.asset('assets/images/logo_bimbomba.png')),
                  ],
                )),
            Container(
              child: ResponsiveGridRow(children: [
                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: Stack(
                    children: [
                      Container(
                          height: 150,
                          alignment: Alignment(0, 0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/welcome-login.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20))),
                      Container(
                        height: 150,
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.maxFinite,
                          child: Text(
                            'Pasteles',
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 5.0)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: Container(
                    height: 100,
                    alignment: Alignment(0, 0),
                    color: Colors.orange,
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: Container(
                      height: 100,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 4.0,
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset('assets/images/bbb.jpg'),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                          ),
                        ],
                      )),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
