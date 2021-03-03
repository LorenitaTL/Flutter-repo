import 'package:bimbomba_application/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardCategory extends StatelessWidget {
  final String src, category;
  const CardCategory({Key key, @required this.src, @required this.category})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black38,
          blurRadius: 2.0,
        )
      ], borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Expanded(
              child: Container(
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(src), fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 4.0,
                        spreadRadius: 1.0,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
              flex: 5),
          Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                    child: Text(category.toUpperCase(),
                        style: TextStyle(
                            color: CompanyColors.orange[300],
                            fontWeight: FontWeight.w600,
                            fontFamily: 'NanumGothic'
                            ))),
              ),
              flex: 1)
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String src, service, price;
  final IconData icon;
  const CardItem(
      {Key key,
      @required this.src,
      @required this.service,
      @required this.price,
      @required this.icon
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: CompanyColors.yellow[300],
          borderRadius: BorderRadius.circular(10)),
      child: Container(
          margin: EdgeInsets.all(3),
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 2.0)],
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(src), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)))),
                  flex: 2),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                service,
                                style: TextStyle(
                                    color: CompanyColors.blue[500],
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              )),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '\$$price',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              )),
                          Container(
                              alignment: Alignment.bottomRight,
                              width: double.infinity,
                              child: FaIcon(icon,
                                  color: CompanyColors.orange[50])),
                        ],
                      )),
                  flex: 5)
            ],
          )),
    );
  }
}

class CardShoppingCart extends StatelessWidget {
  final String src, service, date, time, price;
  const CardShoppingCart(
      {Key key,
      @required this.src,
      @required this.service,
      @required this.date,
      @required this.time,
      @required this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage(src), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5))),
                flex: 2),
            Expanded(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              service,
                              style: TextStyle(
                                  color: CompanyColors.blue[500],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              date,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            )),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              time,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            )),
                      ],
                    )),
                flex: 4),
            Expanded(
                child: Center(
                  child: Text('\$$price',
                      style: TextStyle(
                          color: CompanyColors.orange[500],
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ),
                flex: 2)
          ],
        ));
  }
}

class EditProv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5.0)],
              color: Colors.white,
              borderRadius: BorderRadius.circular(200)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset('assets/images/women.jpg')),
        ),
        Container(
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5.0)]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name   ',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  )),
              FaIcon(FontAwesomeIcons.userEdit, color: Colors.grey[600])
            ],
          ),
        )
      ],
    );
  }
}
