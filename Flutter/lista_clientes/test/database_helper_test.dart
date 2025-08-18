import 'package:flutter_test/flutter_test.dart';
import 'package:lista_clientes/databaseHelper.dart';
import 'package:lista_clientes/product.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  sqfliteFfiInit();

  databaseFactory = databaseFactoryFfi;

  late DatabaseHelper databaseHelper;

  setUp(() {
    databaseHelper = DatabaseHelper();
  });

  test('Insert product', () async {
    var product = Product(
      id: 1,
      name: 'Test Product',
      price: 9.99,
      description: 'This is a test product',
    );
    await databaseHelper.insertProduct(product);
    var products = await databaseHelper.getProducts();

    for (var product in products) {
      print(
          'ID: ${product.id}, Name: ${product.name}, Price: ${product.price}, Description: ${product.description}');
    }
  });

  test('Update product', () async {
    var product = Product(
      id: 1,
      name: 'Updated Product',
      price: 19.99,
      description: 'This is an updated test product',
    );
    await databaseHelper.updateProduct(product);
    var products = await databaseHelper.getProducts();

    for (var product in products) {
      print(
          'ID: ${product.id}, Name: ${product.name}, Price: ${product.price}, Description: ${product.description}');
    }
  });

  test('Delete product', () async {
    await databaseHelper.deleteProduct(1);
    var products = await databaseHelper.getProducts();

    for (var product in products) {
      print(
          'ID: ${product.id}, Name: ${product.name}, Price: ${product.price}, Description: ${product.description}');
    }
  });
}
