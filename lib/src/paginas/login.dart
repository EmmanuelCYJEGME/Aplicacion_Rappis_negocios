import 'package:flutter/material.dart';

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

  //diceño de la pagina de login
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'inicio de secion o registro',
      home: Scaffold(
        appBar: AppBar(
          title: Text('inicio de secion o registro'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Usuario o correo electronico'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _contrasena,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Contraseña'),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Inicio de sesion'),
            ),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Registar Negocio'),
            ),
            const SizedBox(height: 20),
            Text('Datos guardados: $password'),
          ],
        )),
      ),
    );
  }

  @override
  void dispose() {
    _contrasena.dispose(); // Asegúrate de liberar el controlador
    super.dispose();
  }
}
