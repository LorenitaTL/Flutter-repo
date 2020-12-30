import 'package:auth_app/services/google_signin_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class GoogleSignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Auth - Google - Apple'),
            actions: [
              IconButton(
                  icon: Icon(FontAwesomeIcons.doorOpen),
                  onPressed: () {
                    GoogleSignInService.SignOut();
                  })
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                      splashColor: Colors.transparent,
                      minWidth: double.infinity,
                      height: 40,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                          Text(
                            '  Sign in with Google Sign in',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                      onPressed: () {
                        GoogleSignInService.signInWithGoogle();
                      }),
                       MaterialButton(
                      splashColor: Colors.transparent,
                      minWidth: double.infinity,
                      height: 40,
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),
                          Text(
                            '  Sign in with Google Auth',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                      onPressed: () {
                        GoogleSignInService.signInWithGoogle();
                      }),
                       MaterialButton(
                      splashColor: Colors.transparent,
                      minWidth: double.infinity,
                      height: 40,
                      color: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white,
                          ),
                          Text(
                            '  Sign in with Facebook',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ],
                      ),
                      onPressed: () {
                        GoogleSignInService.signInWithGoogle();
                      })
                ],
              ),
            ),
          ));
  }
}