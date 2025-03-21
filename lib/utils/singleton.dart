import 'package:flutter_batch_5/pages/day7/database/app_db.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupSingleton() async {
  final appDatabase = AppDatabase();
  getIt.registerSingleton(appDatabase);
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton(sharedPreferences);
}