import 'package:flutter/material.dart';

class ProducsPage extends StatelessWidget {
  const ProducsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.add),
        ),
      ),
      body: const Center(
        child: Text("Pagina de productos"),
      ),
    );
  }
}
