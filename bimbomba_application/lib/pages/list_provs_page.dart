import 'package:bimbomba_application/widgets/backgrounds.dart';
import 'package:bimbomba_application/widgets/button_menu.dart';
import 'package:bimbomba_application/widgets/card_items.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ListProvsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            BackgroundBlue(),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ButtonMenu(),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(15),
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: 50,
                                    child: Image.asset(
                                        'assets/images/logo_bimbomba.png')),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text('Proveedores',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600)),
                  Container(
                    child: ResponsiveGridRow(children: [
                      ResponsiveGridCol(xs: 5, md: 3, child: EditProv()),
                      ResponsiveGridCol(xs: 5, md: 3, child: EditProv()),
                      ResponsiveGridCol(xs: 5, md: 3, child: EditProv()),
                      ResponsiveGridCol(xs: 5, md: 3, child: EditProv()),
                      ResponsiveGridCol(
                        xs: 5,
                        md: 3,
                        child: EditProv(),
                      ),
                      ResponsiveGridCol(
                        xs: 5,
                        md: 2,
                        child: EditProv(),
                      ),
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
