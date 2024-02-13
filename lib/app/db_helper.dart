import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class DBHelper {
  static Future<Database> database() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      path.join(dbPath, 'real_estate.db'),
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE ads(id INTEGER PRIMARY KEY, address TEXT, price REAL, phone TEXT, number_of_bedrooms INTEGER, number_of_bathrooms INTEGER, number_of_garages INTEGER, number_of_living_rooms INTEGER, description TEXT, area REAL)');
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
}
