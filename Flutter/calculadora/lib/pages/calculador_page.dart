import 'package:flutter/material.dart';

class CalculadorPage extends StatefulWidget {
  const CalculadorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CalculadorPageState();
  }
}

class CalculadorPageState extends State {
  int? valor1;
  int? valor2;
  int? resultado;

  TextEditingController controller1 = TextEditingController(text: "0");
  TextEditingController controller2 = TextEditingController(text: "0");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(  
              "CALCULADORA",
              style: TextStyle(color: Colors.white),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ingrese el primer número"),
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              controller: controller1,
              onChanged: (value) {
                valor1 = int.parse(value);
              },
            ),
            const Text("Ingrese el segundo número"),
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              controller: controller2,
              onChanged: (value) {
                valor2 = int.parse(value);
              },
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                setState(() {
                  resultado = valor1! + valor2!;
                });
              },
              child: const Text(
                "SUMAR",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Resultado: ",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text(
              "$resultado",
              style: const TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
