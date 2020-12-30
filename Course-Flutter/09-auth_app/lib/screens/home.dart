import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Fill Murray',
              style: TextStyle(fontSize: 25),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: CircleAvatar(
                  radius: 60,
                  backgroundImage:
                      NetworkImage('https://www.fillmurray.com/300/200')),
            ),
            SignInButton(Buttons.Facebook,
                text: 'Sign out Facebook',
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed('login'))
          ],
        ),
      ),
    );
  }
}
