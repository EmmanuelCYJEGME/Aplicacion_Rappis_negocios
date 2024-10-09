import 'package:flutter/material.dart';
import 'registroNegocio.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginPantalla createState() => _LoginPantalla();
}

class _LoginPantalla extends State<Login> {
  final _contrasena = TextEditingController();
  final _userCorreo = TextEditingController();

  String usuarioCorreo = '';
  String password = '';

  Future<void> _login() async {
    setState(() {
      password = _contrasena.text;
      _contrasena.clear();
    });
  }

  // Diseño de la página de login
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de sesión o registro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _userCorreo,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuario o correo electrónico',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _contrasena,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Inicio de sesión'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => RegistroPage(),
                  ),
                );
              },
              child: const Text('Registrar Negocio'),
            ),
            const SizedBox(height: 20),
            Text('Datos guardados: $password'),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _contrasena.dispose(); // Asegúrate de liberar el controlador
    _userCorreo.dispose();
    super.dispose();
  }
}
