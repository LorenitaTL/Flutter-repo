import 'package:flutter/material.dart';
import 'package:flutter_estados/models/usuario.dart';
import 'package:flutter_estados/services/usuario_service.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);
    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
            ? Text('${usuarioService.usuario.nombre}')
            : Text('Pagina 2'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  final newUser = new Usuario(
                      nombre: 'Lorena Trujillo',
                      edad: 24,
                      profesiones: [
                        'ISC',
                        'Flutter developer',
                        'MERN Developer'
                      ]);
                  usuarioService.usuario = newUser;
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
                onPressed: () {
                  usuarioService.agregarProfesion();
                },
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
