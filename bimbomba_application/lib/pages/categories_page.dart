import 'package:bimbomba_application/theme/theme.dart';
import 'package:bimbomba_application/widgets/button_menu.dart';
import 'package:bimbomba_application/widgets/card_items.dart';
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
                height: 150,
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
                                          icon: FaIcon(FontAwesomeIcons.search,
                                              color: Colors.grey),
                                          hintText: 'Buscar',
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
                        margin: EdgeInsets.only(bottom: 5),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 50,
                        child: Image.asset('assets/images/logo_bimbomba.png')),
                  ],
                )),
            Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Categorías'.toUpperCase(),
                  style: TextStyle(
                      color: CompanyColors.blue[600],
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                )),
            Container(
              child: ResponsiveGridRow(children: [
                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: CardCategory(
                      src: 'assets/images/inflable.jpg', category: 'Inflables'),
                ),
                ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: CardCategory(
                        src: 'assets/images/cake.jpg', category: 'Pasteles')),
                ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: CardCategory(
                        src: 'assets/images/candy_bar3.jpg',
                        category: 'Candy Bar')),
                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: CardCategory(
                      src: 'assets/images/pinata.jpg', category: 'Piñatas'),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: CardCategory(
                      src: 'assets/images/salon.jpeg', category: 'Salones'),
                ),
                ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: CardCategory(
                      src: 'assets/images/food.jpeg', category: 'Banquetes'),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
