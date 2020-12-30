import 'package:auth_app/pages/google_sign_in_page.dart';
import 'package:auth_app/screens/home.dart';
import 'package:auth_app/screens/login.dart';
import 'package:auth_app/services/google_signin_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'login',
      routes: {
        'google_sign_in': (_) => GoogleSignInPage(),
        'login': (_) => LoginPage(),
        'home':(_)=>HomePage()
      },
    );
  }
}
