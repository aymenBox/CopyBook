import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:copybook/model/photo.dart';

class DBHelper {
  static Database? _db;
  static const String PHOTO_ID = 'id';
  static const String PHOTO_NAME = 'photoType';
  static const String PHOTO_TYPE = 'photoType';
  static const String TABLE = 'PhotoTable';
  static const String DB_NAME = 'photos.db';

  Future<Database> get db async => _db = await initDb();

  initDb() async {
    print("database init");
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $TABLE ($PHOTO_ID INTEGER, $PHOTO_NAME TEXT,$PHOTO_TYPE TEXT)");
  }

  Future<Photo> save(Photo photo) async {
    print('save photo started');
    var dbClient = await db;
    print("inserting image to table");
    photo.id = await dbClient.insert(TABLE, photo.toMap());
    return photo;
  }

  Future<List<Photo>> getPhotos() async {
    var dbClient = await db;
    List<Map<String, dynamic>> maps = await dbClient
        .query(TABLE, columns: [PHOTO_ID, PHOTO_NAME, PHOTO_TYPE]);
    List<Photo> photo = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        photo.add(Photo.fromMap(maps[i]));
      }
    }
    return photo;
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
}
