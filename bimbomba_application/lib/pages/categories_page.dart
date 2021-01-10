import 'package:bimbomba_application/theme/theme.dart';
import 'package:bimbomba_application/widgets/card_items.dart';
import 'package:bimbomba_application/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWithLogo(),
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
