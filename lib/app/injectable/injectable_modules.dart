import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

@module
abstract class InjectableModule {
  @preResolve
  Future<Database> get database async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'demo.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        const query = '''
        CREATE TABLE Cities(
          id INTEGER PRIMARY KEY,
          autocompleteModel TEXT,
          isDefault TEXT,
          lastWeather TEXT,
          lastMeasure TEXT
        )
        ''';
        await db.execute(query);
      },
    );
  }
}
