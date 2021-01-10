import 'package:bimbomba_application/theme/theme.dart';
import 'package:bimbomba_application/widgets/card_items.dart';
import 'package:bimbomba_application/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CompanyColors.orange[500],
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchHeaderWithTitle(title: 'Mis servicios'),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_, i) {
                  return CardItem(
                    src: 'assets/images/inflable.jpg',
                    service: 'Inflable',
                    price: '500',
                    icon: FontAwesomeIcons.pen,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
