import 'dart:io';

import 'package:first_project_vscode/Log%20Form/dashboard/global/global_field.dart';
import 'package:first_project_vscode/Log%20Form/dashboard/model/product_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ConnectionDB {
  Future<Database> initDatabase() async {
    final Directory tempDir = await getTemporaryDirectory();
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'products.db'),
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE $productTable($fid INTERGER PRIMARY KEY, $fName TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertProduct(ProductModel pro) async {
    var db = await initDatabase();
    await db.insert(productTable, pro.toMap());
    print('data was add..');
  }

  Future<List<ProductModel>> getProductList() async {
    var db = await initDatabase();
    List<Map<String, dynamic>> result = await db.query(productTable);
    return result.map((e) => ProductModel.fromMap(e)).toList();
  }

  Future<void> deleteProduct(int id) async {
    var db = await initDatabase();
    await db.delete(productTable, where: '$fid=?', whereArgs: [id]);
  }

  Future<void> updateProduct(ProductModel pro) async {
    var db = await initDatabase();
    await db.update(productTable, pro.toMap(),
        where: '$fid=?', whereArgs: [pro.id]);
  }
}
