import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.access_alarms_sharp),
          onPressed: () => {print("Test")},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: const Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(color: Colors.blue, Icons.home),
                  Text(style: TextStyle(color: Colors.blue), "HOME"),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.abc), Text("PRODUCTS")],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.abc), Text("PRODUCTS")],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.abc), Text("PRODUCTS")],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "OPT"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Test"),
          ],
        ),
        body: const Center(
          child: Text('Realizado por Josue Tipan'),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Center(
            child: Text("APP TEST"),
          ),
          titleTextStyle: const TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black),
          centerTitle: true,
          shadowColor: Colors.grey,
          elevation: 30,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
