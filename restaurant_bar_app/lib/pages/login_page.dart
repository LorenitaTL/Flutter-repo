import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bar_app/models/mesa.dart';
import 'package:restaurant_bar_app/theme/theme.dart';
import 'package:restaurant_bar_app/services/auth_service.dart';
import 'package:restaurant_bar_app/services/socket_service.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final mesaCtrl = new TextEditingController();
  final meseroCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final socketService = Provider.of<SocketService>(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //Inicia background con "filtro" oscuro
            //TODO: Tratar de cambiar el filtro
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/images/bar_2.jpg'),
                      fit: BoxFit.cover)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.black54.withOpacity(0.5).withAlpha(180)
                  //color: Colors.black54.withAlpha(180)
                  ),
            ),
            //---Termina background ---//
            //Formulario login
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(150),
                          child: Image.asset('assets/images/logo.jpg')),
                    ),
                    inputLogin('Mesa', Icons.restaurant, mesaCtrl),
                    inputLogin(
                        'Mesero', Icons.supervised_user_circle, meseroCtrl),
                    RaisedButton(
                        elevation: 2,
                        highlightElevation: 5,
                        color: CompanyColors.yellow1[700],
                        shape: StadiumBorder(),
                        child: Container(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              'Ingresar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                        onPressed: authService.autenticando
                            ? null
                            : () async {
                                FocusScope.of(context).unfocus();
                                print(mesaCtrl.text);
                                print(meseroCtrl.text);
                                Mesa loginOk = await authService.login(
                                    mesaCtrl.text.trim(),
                                    meseroCtrl.text.trim());
                                if (loginOk != false) {
                                  //TODO: Agregar socket service usuario conectado
                                  socketService.connect();
                                  print('MESA RESPONSE LOGIN');
                                  print(loginOk.type);
                                  print(loginOk.id);
                                  if (loginOk.type == 'admin') {
                                    Navigator.pushReplacementNamed(
                                        context, 'tables');
                                  } else {
                                    Navigator.pushReplacementNamed(
                                        context, 'home_client');
                                  }
                                } else {
                                  print('Revise sus credenciles');
                                }
                              })
                  ],
                ),
              ),
            )
            //----Fin formulario----
          ],
        ),
      ),
    );
  }

  Container inputLogin(hint, icon, ctrl) {
    return Container(
        child: TextField(
          controller: ctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(icon),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.white60,
              )),
        ),
        decoration: BoxDecoration(
            color: Colors.white24, borderRadius: BorderRadius.circular(30)));
  }
}
