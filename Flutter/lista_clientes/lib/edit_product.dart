import 'package:flutter/material.dart';
import 'databaseHelper.dart';
import 'product.dart';

class EditProduct extends StatefulWidget {
  final Product product;

  const EditProduct({super.key, required this.product});

  @override
  State<StatefulWidget> createState() {
    return EditProductState();
  }
}

class EditProductState extends State<EditProduct> {
  late TextEditingController nameController;
  late TextEditingController priceController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.product.name);
    priceController =
        TextEditingController(text: widget.product.price.toString());
    descriptionController =
        TextEditingController(text: widget.product.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name Product'),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: 'Price Product'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: descriptionController,
              decoration:
                  const InputDecoration(labelText: 'Description Product'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final updatedProduct = Product(
                  id: widget.product.id,
                  name: nameController.text,
                  price: double.parse(priceController.text) ?? 0.0,
                  description: descriptionController.text,
                );
                await DatabaseHelper().updateProduct(updatedProduct);
                print(
                    'Producto actualizado en base de datos: ${updatedProduct.name}');
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Product updated')),
                );
                Navigator.pop(context, true); // Close the form after saving
              },
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
