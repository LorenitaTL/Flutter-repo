import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderHomePaint(),
      ),
    );
  }
}

class _HeaderHomePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xffffbd59);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = new Path();

    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.35, size.width, size.height * 0.20);
    
    path.lineTo(size.width, 0);
    canvas.drawShadow(path, Colors.black, 4.0, true);
    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderMini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB),
      child: CustomPaint(
        painter: _HeaderMiniPaint(),
      ),
    );
  }
}

class _HeaderMiniPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xffffbd59);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    final path = new Path();

    path.lineTo(0, size.height * 0.15);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.30, size.width, size.height * 0.15);
    
    path.lineTo(size.width, 0);
    canvas.drawShadow(path, Colors.black, 4.0, true);
    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}