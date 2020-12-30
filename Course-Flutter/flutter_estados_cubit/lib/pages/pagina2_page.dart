import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pagina 2'),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'Establecer usuario',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'Cambir Edad',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'Añadir profesión',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              )

            ],
          ),
        ),
      ),
    );
  }
}
