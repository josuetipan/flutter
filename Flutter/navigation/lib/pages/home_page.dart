import 'package:flutter/material.dart';
import 'package:navigation/pages/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.products);
              //Navigator.push(context, route);
            },
            color: Colors.blue,
            child: const Text("IR A PRODUCTOS"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.customers);
            },
            color: Colors.blue,
            child: const Text("IR A CLIENTES"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.listview);
            },
            color: Colors.blue,
            child: const Text("IR A ListView Basico"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.productList);
            },
            color: Colors.blue,
            child: const Text("IR A Lista de productos"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.clientesList);
            },
            color: Colors.blue,
            child: const Text("IR A Lista de clientes"),
          )
        ],
      ),
    );
  }
}
