import 'package:flutter/material.dart';

class Neumorphism extends StatefulWidget {
  const Neumorphism({
    Key key,
  }) : super(key: key);

  @override
  _NeumorphismState createState() => _NeumorphismState();
}

class _NeumorphismState extends State<Neumorphism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome'),
              Text('Sign in',
                  style:
                      TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700)),
              SizedBox(height: 40.0),
              Text('Email'),
              SizedBox(height: 10.0),
              Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFEFF3F6),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(6, 2),
                            blurRadius: 6.0,
                            spreadRadius: 5.0),
                        BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 0.9),
                            offset: Offset(-6, -2),
                            blurRadius: 6.0,
                            spreadRadius: 5.0)
                      ]),
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Admin@gmail.com'))),
              SizedBox(height: 20.0),
              Text('Password'),
              SizedBox(height: 10.0),
              Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFEFF3F6),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(6, 2),
                            blurRadius: 6.0,
                            spreadRadius: 5.0),
                        BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 0.9),
                            offset: Offset(-6, -2),
                            blurRadius: 6.0,
                            spreadRadius: 5.0)
                      ]),
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: '********'))),
              SizedBox(height: 50),
              Text('Forgot Password'),
              SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xFFFF27BB),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFFF27BB),
                            offset: Offset(6, 2),
                            blurRadius: 1.0,
                            spreadRadius: 2.0),
                      ]),
                  child: Text('Log in',
                      style: TextStyle(color: Colors.white, fontSize: 14)))
            ],
          ),
        ),
      ),
    );
  }
}