import 'package:auth_app/screens/home.dart';
import 'package:flutter/material.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton(Buttons.Facebook,
                onPressed: () => Navigator.of(context).pushReplacementNamed('home'))
          ],
        ),
      ),
    );
  }
}
