import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final Widget child;
  final double width;
  const InputForm({Key key, this.child,@required this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5.0)],
        ),
        child: child);
  }
}
