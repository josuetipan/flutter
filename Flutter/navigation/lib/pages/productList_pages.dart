import 'package:flutter/material.dart';
import 'package:navigation/pages/product_pages.dart';

class ProducsListPage extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: "Producto1",
        price: 10.0,
        descripcion: "descripción del producto1"),
    Product(
        name: "Producto2",
        price: 20.0,
        descripcion: "descripción del producto2"),
    Product(
        name: "Producto3",
        price: 30.0,
        descripcion: "descripción del producto3"),
    Product(
        name: "Producto4",
        price: 40.0,
        descripcion: "descripción del producto4"),
    Product(
        name: "Producto5",
        price: 50.0,
        descripcion: "descripción del producto5"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6"),
    Product(
        name: "Producto6",
        price: 60.0,
        descripcion: "descripción del producto6")
  ];
  ProducsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].descripcion),
            trailing: Text('\$${products[index].price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
