import 'package:flutter/material.dart';

class PerfilNegocio extends StatelessWidget {
  const PerfilNegocio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Negocio"),
        backgroundColor: Theme.of(context).primaryColor, // Cambia el color aquí
      ),
      body: const Center(
        child: Text("Contenido de la página principal"),
      ),
    );
  }
}