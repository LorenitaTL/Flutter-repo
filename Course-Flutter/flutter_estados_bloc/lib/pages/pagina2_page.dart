import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_estados/bloc/usuario/usuario_bloc.dart';
import 'package:flutter_estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
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
                      nombre: 'Lorena',
                      edad: 24,
                      profesiones: ['Web developer', 'Flutter developer']);
                  usuarioBloc.add(ActivarUsuario(newUser));
                },
                child: Text(
                  'Establecer usuario',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: () {
                  usuarioBloc.add(CambiarEdad(23));
                },
                child: Text(
                  'Cambir Edad',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              MaterialButton(
                onPressed: () {
                  final profesion = 'UX design';
                  usuarioBloc.add(AgregarProfesion(profesion));
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
