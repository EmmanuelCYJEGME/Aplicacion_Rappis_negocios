import 'package:flutter/material.dart';
import 'package:rappis_negocios/src/paginas/login.dart';
import 'package:rappis_negocios/src/paginas/pedidos.dart';
import 'package:rappis_negocios/src/paginas/principal.dart';
import 'package:rappis_negocios/src/paginas/productos.dart';
import 'bottom_nav_bar.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rappi's Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true, // Define un color primario para el tema
      ),
      home: const _HomePrincipal(title: "Rappi's Juchi Negocios"),
    );
  }
}

class _HomePrincipal extends StatefulWidget{
  const _HomePrincipal({Key? key, required this.title}) : super(key: key);
  final String title;
  State<_HomePrincipal> createState() => _MyHomePrincipal();

}

class _MyHomePrincipal extends State<_HomePrincipal> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // Barra de navegación
  @override
  Widget build(BuildContext context) {
    Widget currentPage;
    switch (_currentIndex) {
      case 0:
        currentPage = Principal();
        break;
      case 1:
        currentPage = Pedidos();
        break;
      case 2:
        currentPage = Productos();
        break;
      case 3:
        currentPage = Login();
        break;
      default:
        currentPage = Principal();
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        // Altura ajustada del AppBar
        child: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(5.0),
            // Espaciado alrededor de los elementos
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              // Alinea los elementos al final para dar espacio
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // Espacio entre los elementos
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24, // Tamaño más grande para el título
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
