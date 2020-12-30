import 'package:bimbomba_application/theme/theme.dart';
import 'package:bimbomba_application/widgets/backgrounds.dart';
import 'package:bimbomba_application/widgets/button_menu.dart';
import 'package:bimbomba_application/widgets/input_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          BackgroundBlue(),
          Center(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonMenu(),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(top: 15, bottom: 15),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 50,
                            child:
                                Image.asset('assets/images/logo_bimbomba.png')),
                      )
                    ]),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 5.0)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(200)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset('assets/images/women.jpg')),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                      child: Column(children: [
                    InputForm(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                            style: TextStyle(color: Colors.grey[700]),
                            decoration: InputDecoration(
                                icon: FaIcon(FontAwesomeIcons.user,
                                    color: Colors.grey),
                                hintText: 'Nombre',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none))),
                    InputForm(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                            style: TextStyle(color: Colors.grey[700]),
                            decoration: InputDecoration(
                                icon: FaIcon(FontAwesomeIcons.city,
                                    color: Colors.grey),
                                hintText: 'Dirección',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none))),
                    InputForm(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                            style: TextStyle(color: Colors.grey[700]),
                            decoration: InputDecoration(
                                icon: FaIcon(FontAwesomeIcons.phoneAlt,
                                    color: Colors.grey),
                                hintText: 'Teléfono',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none))),
                    InputForm(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                            style: TextStyle(color: Colors.grey[700]),
                            decoration: InputDecoration(
                                icon: FaIcon(FontAwesomeIcons.envelope,
                                    color: Colors.grey),
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none))),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            color: CompanyColors.orange[300],
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 5.0)
                            ]),
                        child: Text('Guardar cambios',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)))
                  ])),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
