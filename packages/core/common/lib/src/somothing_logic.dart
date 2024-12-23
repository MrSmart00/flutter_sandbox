import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

class DataFetcher {
  DataFetcher(this.client);

  final http.Client client;

  Future<Map<String, dynamic>> fetchData(String url) async {
    final response = await client.get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }
    return jsonDecode(response.body) as Map<String, dynamic>;
  }
}

class DatabaseHelper {
  Future<Database> getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'app_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE data(id INTEGER PRIMARY KEY, value TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> saveData(Database db, Map<String, dynamic> data) async {
    await db.insert(
      'data',
      {'id': data['id'], 'value': data['value']},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}

class SharedPreferencesHelper {
  Future<void> saveData(Map<String, dynamic> data) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('data', jsonEncode(data));
  }
}

class SomethingLogic {
  final DataFetcher dataFetcher;
  final DatabaseHelper databaseHelper;
  final SharedPreferencesHelper sharedPreferencesHelper;

  SomethingLogic(
      this.dataFetcher, this.databaseHelper, this.sharedPreferencesHelper);

  Future<void> performComplexOperation() async {
    final data = await dataFetcher.fetchData('https://example.com/data');
    final db = await databaseHelper.getDatabase();
    await databaseHelper.saveData(db, data);
    await sharedPreferencesHelper.saveData(data);

    if (data['value'] == 'special') {
      // ...existing code...
      print('Special value found!');
      // ...existing code...
    } else {
      // ...existing code...
      print('Regular value found.');
      // ...existing code...
    }
  }
}
