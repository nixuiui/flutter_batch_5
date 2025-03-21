import 'package:flutter_batch_5/pages/day7/database/app_db.dart';

class ProductDb {

  late final AppDatabase db;

  ProductDb(this.db);

  Future<List<Product>> getAll() async {
    return await db.select(db.products).get();
  }

  Future<void> addProduct(ProductsCompanion data) async {
    await db.into(db.products).insert(data);
  }

  Future<void> editProduct(ProductsCompanion data, int id) async {
    await (db.update(db.products)..where((e) => e.id.equals(id))).write(data);
  }

  Future<void> deleteProduct(int id) async {
    await (db.delete(db.products)..where((e) => e.id.equals(id))).go();
  }

}