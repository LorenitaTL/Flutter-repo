import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final IconData icon;
  @required final String texto;
  final Color color1;
  final Color color2;
  @required final Function onPress;

  const BotonGordo(
      {Key key,
      this.icon = FontAwesomeIcons.clinicMedical,
      this.texto = 'Show profile data',
      this.color1 = Colors.blueAccent,
      this.color2 = Colors.blue,
      this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Stack(
        children: [
          _BotonGordoBackground(
              icon: this.icon, color1: this.color1, color2: this.color2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 140, width: 40),
              FaIcon(this.icon, color: Colors.white, size: 40),
              SizedBox(width: 20),
              Expanded(
                child: Text(this.texto,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
              FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.white,
              ),
              SizedBox(width: 40),
            ],
          )
        ],
      ),
    );
  }
}

class _BotonGordoBackground extends StatelessWidget {
  final IconData icon;
  final Color color1;
  final Color color2;

  const _BotonGordoBackground(
      {Key key,
      @required this.icon,
      @required this.color1,
      @required this.color2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(4, 6), blurRadius: 10.0)
            ],
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              color1, color2,
              // Color(0xff6989F5),
              // Color(0xff906EF5),
            ])),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Positioned(
                  right: -20,
                  top: -20,
                  child: FaIcon(this.icon,
                      size: 150, color: Colors.white.withOpacity(0.2)))
            ],
          ),
        ));
  }
}
