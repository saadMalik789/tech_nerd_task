import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:technerd_task/data/export.dart';

class DatabaseService {
  // Singleton pattern
  static final DatabaseService _databaseService = DatabaseService._internal();

  factory DatabaseService() => _databaseService;

  DatabaseService._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    // Initialize the DB first time it is accessed
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();

    // Set the path to the database. Note: Using the `join` function from the
    // `path` package is best practice to ensure the path is correctly
    // constructed for each platform.
    final path = join(databasePath, 'flutter_sqflite_database.db');

    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    return await openDatabase(path, onCreate: _onCreate, version: 1);
  }

  // When the database is first created, create a table to store data
  Future<void> _onCreate(Database db, int version) async {
    // Run the CREATE TABLE statement on the database.
    await db.execute(
      'CREATE TABLE ItemToSell(id INTEGER, name TEXT, price INTEGER, quantity INTEGER, type INTEGER)',
    );
  }

  // Define a function that inserts breeds into the database
  Future<void> insertSellData(List<BuyModel> data) async {
    // Get a reference to the database.
    final db = await _databaseService.database;

    // Insert the Breed into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same breed is inserted twice.
    //
    // In this case, replace any previous data.
    data.forEach((element) async {
      await db.insert(
        'ItemToSell',
        element.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    });
  }

  Future<dynamic> getSellData() async {
    // Get a reference to the database.
    final db = await _databaseService.database;

    // Query the table for all the data.
    final List<Map<String, dynamic>> maps = await db.query('ItemToSell');

    return maps;
  }
}
