import 'package:flutter/material.dart';
import 'package:navigation/pages/customers_page.dart';
import 'package:navigation/pages/homePage.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/listview.dart';
import 'package:navigation/pages/producs_page.dart';
import 'package:navigation/pages/productList_pages.dart';
import 'package:navigation/pages/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        Routes.products: (context) => const ProducsPage(),
        Routes.customers: (context) => const CustomersPage(),
        Routes.listview: (context) => const Listview(),
        Routes.productList: (context) =>  ProducsListPage(),
        Routes.clientesList: (context) =>  Homepage1(),
      },
    );
  }
}
