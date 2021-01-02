import 'package:bimbomba_application/theme/theme.dart';
import 'package:bimbomba_application/widgets/card_items.dart';
import 'package:bimbomba_application/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SearchHeader(),
          Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text('Resultados:',
                  style: TextStyle(
                      color: CompanyColors.orange[500], fontSize: 18))),
          Expanded(
              child: Container(
            child: ListView(children: [
              CardItem(
                  src: 'assets/images/inflable.jpg',
                  service: 'Inflable',
                  price: '700',
                  icon: FontAwesomeIcons.shoppingCart,
                  ),
              CardItem(
                  src: 'assets/images/food.jpeg',
                  service: 'Banquete 100 personas',
                  price: '5000',
                  icon: FontAwesomeIcons.shoppingCart,
                  ),
              CardItem(
                  src: 'assets/images/cake.jpg',
                  service: 'Pastel arracadas',
                  price: '500',
                  icon: FontAwesomeIcons.shoppingCart,
                  ),
            ]),
          ))
        ],
      ),
    ));
  }
}
