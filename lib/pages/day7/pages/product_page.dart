import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_5/pages/day6/blocs/theme_cubit.dart';
import 'package:flutter_batch_5/pages/day6/blocs/theme_state.dart';
import 'package:flutter_batch_5/pages/day7/database/app_db.dart';
import 'package:flutter_batch_5/pages/day7/database/data/product_db.dart';
import 'package:flutter_batch_5/utils/singleton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final productDb = ProductDb(getIt.get<AppDatabase>());
  final products = <Product>[];

  @override
  void initState() {
    getProduct();
    super.initState();
  }
  
  Future<void> getProduct() async {
    final data = await productDb.getAll();
    setState(() {
      products.clear();
      products.addAll(data);
    });
  }
  
  Future<void> addProduct() async {
    final product = ProductsCompanion(
      name: Value("Produk ${products.length+1}"),
      price: Value(100000),
    );
    await productDb.addProduct(product);
    await getProduct();
  }
  
  Future<void> deleteProduct(int id) async {
    await productDb.deleteProduct(id);
    await getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produk"),
        actions: [
          IconButton(
            onPressed: addProduct, 
            icon: Icon(Icons.add)
          ),
          BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                if(state.themeMode == ThemeMode.dark) {
                  return IconButton(
                    onPressed: () {
                      context.read<ThemeCubit>().setThemeMode(ThemeMode.light);
                    }, 
                    icon: Icon(Icons.light_mode)
                  );
                }
                return IconButton(
                  onPressed: () {
                    context.read<ThemeCubit>().setThemeMode(ThemeMode.dark);
                  }, 
                  icon: Icon(Icons.dark_mode)
                );
              }
            ),
        ],
      ),
      body: ListView.separated(
        itemCount: products.length,
        separatorBuilder: (_, __) => Divider(), 
        itemBuilder: (_, index) => ListTile(
          title: Text(products[index].name ?? ''),
          subtitle: Text("${products[index].price}"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () => deleteProduct(products[index].id), 
                icon: Icon(Icons.delete)
              )
            ],
          ),
        ), 
      ),
    );
  }
}