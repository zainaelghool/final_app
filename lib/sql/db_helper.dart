import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class DBHelper {
  static Future<Database> database() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      path.join(dbPath, 'real_estate.db'),
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE ads(id INTEGER PRIMARY KEY, address TEXT, price REAL, phone TEXT, number_of_bedrooms INTEGER, number_of_bathrooms INTEGER, number_of_garages INTEGER, number_of_living_rooms INTEGER, description TEXT, area REAL)',
        );
        await db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY, username TEXT, password TEXT, status TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertAd(Map<String, dynamic> adData) async {
    final db = await DBHelper.database();
    await db.insert(
      'ads',
      adData,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getAds() async {
    final db = await DBHelper.database();
    return db.query('ads');
  }

  Future<void> insertUser(Map<String, dynamic> userData) async {
    final db = await DBHelper.database();
    await db.insert(
      'users',
      userData,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await DBHelper.database();
    return db.query('users');
  }
}
