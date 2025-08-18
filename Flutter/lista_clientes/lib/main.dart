import 'package:flutter/material.dart';
import 'package:lista_clientes/databaseHelper.dart';
import 'package:lista_clientes/product_form.dart';
import 'package:lista_clientes/product_list.dart';

void main() {
  var dbHelper1 = DatabaseHelper();
  var dbHelper2 = DatabaseHelper();

  if (dbHelper1 == dbHelper2) {
    print('Singleton works: both instances are the same.');
  } else {
    print('Singleton does not work: instances are different.');
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductList(),
      routes: {
        '/add': (context) => const ProductForm(),
      },
    );
  }
}
