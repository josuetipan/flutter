import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/clientes.dart';

class Homepage extends StatelessWidget{
  final List<Clientes> clientes =[
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
  ];
  Homepage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: clientes.length,
        itemBuilder:(context, index) {
          return ListTile(
            title: Text(clientes[index].name + clientes[index].apellido),
            subtitle: Text(clientes[index].cedula),
            trailing: Text('\$${clientes[index].cedula}'),
          );
        },
       ) ,
    );
  }
    
}