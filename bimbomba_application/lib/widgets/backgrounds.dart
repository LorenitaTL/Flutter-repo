import 'package:bimbomba_application/theme/theme.dart';
import 'package:flutter/material.dart';

class BackgroundBlue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: FractionalOffset.bottomCenter,
        end: FractionalOffset.topCenter,
        colors: [
          CompanyColors.blue[500],
          CompanyColors.blue[300],
          CompanyColors.blue[25],
        ],
      )),
    );
  }
}
