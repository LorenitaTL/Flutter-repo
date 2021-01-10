import 'package:bimbomba_application/theme/theme.dart';
import 'package:bimbomba_application/widgets/button_menu.dart';
import 'package:bimbomba_application/widgets/input_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderWithLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [CompanyColors.blue[25], CompanyColors.blue[100]]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 5.0)],
        ),
        child: Column(
          children: [
            Row(
              children: [
                ButtonMenu(),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: InputForm(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: TextFormField(
                              style: TextStyle(color: Colors.grey[700]),
                              decoration: InputDecoration(
                                  icon: FaIcon(FontAwesomeIcons.search,
                                      color: Colors.grey),
                                  hintText: 'Buscar',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none)))),
                ),
                Container(
                    margin: EdgeInsets.all(5),
                    child: FaIcon(FontAwesomeIcons.shoppingCart,
                        color: Colors.white)),
              ],
            ),
            Container(
                margin: EdgeInsets.only(bottom: 5),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 50,
                child: Image.asset('assets/images/logo_bimbomba.png')),
          ],
        ));
  }
}

class SearchHeaderWithTitle extends StatelessWidget {
  final String title;
  const SearchHeaderWithTitle({
    Key key,
    @required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [CompanyColors.blue[25], CompanyColors.blue[100]]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 5.0)],
        ),
        child: Column(
          children: [
            Row(
              children: [
                ButtonMenu(),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: InputForm(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: TextFormField(
                              style: TextStyle(color: Colors.grey[700]),
                              decoration: InputDecoration(
                                  icon: FaIcon(FontAwesomeIcons.search,
                                      color: Colors.grey),
                                  hintText: 'Buscar',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none)))),
                ),
                Container(
                    margin: EdgeInsets.all(5),
                    child: FaIcon(FontAwesomeIcons.shoppingCart,
                        color: Colors.white)),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            )
          ],
        ));
  }
}

class SearchHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [CompanyColors.blue[25], CompanyColors.blue[100]]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 5.0)],
        ),
        child: Column(
          children: [
            Row(
              children: [
                ButtonMenu(),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: InputForm(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: TextFormField(
                              style: TextStyle(color: Colors.grey[700]),
                              decoration: InputDecoration(
                                  icon: FaIcon(FontAwesomeIcons.search,
                                      color: Colors.grey),
                                  hintText: 'Buscar',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none)))),
                ),
                Container(
                    margin: EdgeInsets.all(5),
                    child: FaIcon(FontAwesomeIcons.shoppingCart,
                        color: Colors.white)),
              ],
            ),
          ],
        ));
  }
}

class LogoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [CompanyColors.blue[25], CompanyColors.blue[100]]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 5.0)],
        ),
        child: Column(
          children: [
            Row(
              children: [
                ButtonMenu(),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 50,
                        child: Image.asset('assets/images/logo_bimbomba.png')),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class HeaderWithTitle extends StatelessWidget {
  final String title;
  final IconData icon;
  const HeaderWithTitle({
    Key key,
    @required this.title,
    this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [CompanyColors.blue[25], CompanyColors.blue[100]]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 5.0)],
        ),
        child: Column(
          children: [
            Row(
              children: [
                ButtonMenu(),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 50,
                        child: Image.asset('assets/images/logo_bimbomba.png')),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                  icon != null
                      ? FaIcon(icon, color: Colors.white, size: 18)
                      : Container()
                ],
              ),
            )
          ],
        ));
  }
}
