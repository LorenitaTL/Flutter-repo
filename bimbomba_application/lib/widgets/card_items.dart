import 'package:bimbomba_application/theme/theme.dart';
import 'package:flutter/material.dart';

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
                            fontWeight: FontWeight.w600))),
              ),
              flex: 1)
        ],
      ),
    );
  }
}
