import 'package:flutter/material.dart';
import 'package:flutter_estados/models/usuario.dart';
import 'package:flutter_estados/services/usuario_service.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: usuarioService.usuarioStream,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
            return snapshot.hasData
                ? Text('Nombre: ${snapshot.data.nombre}')
                : Text('Pagina 2');
          },
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  final nuevoUsuario = new Usuario(
                      nombre: 'Lorena', edad: 24, profesiones: ['ISC']);
                  usuarioService.cargarUsuario(nuevoUsuario);
                },
                child: Text(
                  'Establecer usuario',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: () {
                  usuarioService.cambiarEdad(23);
                },
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
