import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'menu y productos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('menu y productos'),
        ),
        body: Center(
          child: Container(
            child: Text('pagina de productos'),
          ),
        ),
      ),
    );
  }
}
