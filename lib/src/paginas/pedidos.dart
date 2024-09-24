import 'package:flutter/material.dart';

class Pedidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pedidos de los usuarios',
      home: Scaffold(
        appBar: AppBar(
          title: Text('tienes pedidos'),
        ),
        body: Center(
          child: Container(
            child: Text('se mostraran todos los pedidos'),
          ),
        ),
      ),
    );
  }
}
