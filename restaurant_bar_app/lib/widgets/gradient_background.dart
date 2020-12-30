import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        colors: [
          Colors.black26,
          Colors.black45,
          Colors.black54,
          Colors.black87,
        ],
        stops: [0.1, 0.5, 0.7, 0.9],
      )),
    );
  }
}
