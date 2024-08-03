import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Listview Basico"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.add),
          ),
        ),
        body: ListView(
          children: const  <Widget> [
            ListTile(
              title: Text("Elemonto1"),
              subtitle: Text("Subtitle del elemento1"),
              leading: Icon(
                Icons.add_to_queue,
                color: Colors.blue
              ),
            ),
            ListTile(
              title: Text("Elemonto2"),
              subtitle: Text("Subtitle del elemento2"),
              leading: Icon(
                Icons.add_to_queue,
                color: Colors.red
              ),
            ),
            ListTile(
              title: Text("Elemonto3"),
              subtitle: Text("Subtitle del elemento3"),
              leading: Icon(
                Icons.add_to_queue,
                color: Colors.blue
              ),
            )
          ],
        ));
  }
}
