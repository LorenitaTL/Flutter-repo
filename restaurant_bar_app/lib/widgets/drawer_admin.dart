import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_bar_app/theme/theme.dart';

Drawer drawerAdmin() {
  return Drawer(
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        colors: [
          Colors.black,
          Colors.black87,
          Colors.black54,
          Colors.black45,
        ],
        stops: [0.3, 0.5, 0.9, 1.0],
      )),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Header'),
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.jpg'),
                    fit: BoxFit.contain)),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.utensils,
              color: CompanyColors.yellow1[700],
            ),
            title: Text(
              'Pedidos',
              style: TextStyle(
                  color: CompanyColors.yellow1[700],
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.hamburger,
              color: CompanyColors.yellow1[700],
            ),
            title: Text(
              'Productos',
              style: TextStyle(
                  color: CompanyColors.yellow1[700],
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.userFriends,
              color: CompanyColors.yellow1[700],
            ),
            title: Text(
              'Personal',
              style: TextStyle(
                  color: CompanyColors.yellow1[700],
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
          ),
        ],
      ),
    ),
  );
}
