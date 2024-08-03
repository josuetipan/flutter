import 'package:flutter/material.dart';
import 'package:navigation/pages/clientes.dart';

class Homepage1 extends StatelessWidget{
  final List<Clientes> clientes =[
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
    Clientes(
      name: "Alejandro ",
      apellido: "Castillo",
      cedula: "1752121044",
      telefono: "0981208510"
    ),
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
    Clientes(
      name: "Josue",
      apellido: "Tipan",
      cedula: "1754772778",
      telefono: "0958860697"
    ),
  ];
  Homepage1({super.key});

  

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
            trailing: Text('\Cl. ${clientes[index].cedula}'),
          );
        },
       ) ,
    );
  }
    
}