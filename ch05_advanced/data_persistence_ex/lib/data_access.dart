// Import the package
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:sqflite/sqflite.dart';

// Saving Data
Future<void> saveData(String key, String value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}

// Retrieving data
Future<String?> loadData(String key) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(key);
}

// Writing to file
Future<void> writeToFile (String fileName, String data) async {
  final file = File(fileName);
  await file.writeAsString(data);
}

// Reading from a file
Future<String> readFromFile(String fileName) async {
  final file = File(fileName);
  return await file.readAsString();
}

// Creating a database and table
final database = openDatabase(
  'my_database.db',
  version: 1,
  onCreate: (Database db, int version) async {
    await db.execute('CREATE TABLE my_table(id INTEGER PRIMARY KEY, name TEXT, value INTEGER)');
  }
);

// Inserting data
Future<void> insertData(Map<String, dynamic> data) async {
  final db = await database;
  await db.insert('my_table', data);
}

// Querying data
Future<List<Map<String, dynamic>>> fetchData() async {
  final db = await database;
  return await db.query('my_table');
}