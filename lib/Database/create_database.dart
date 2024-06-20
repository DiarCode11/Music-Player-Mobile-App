import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

// Fungsi untuk membuat dan menginisialisasi database
Future<Database> createDatabase() async {
  // Mendapatkan direktori dokumen aplikasi
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String pathToDatabase = join(documentsDirectory.path, 'music.db');

  // Membuka atau membuat database jika belum ada
  return openDatabase(
    pathToDatabase,
    version: 1,
    onCreate: (Database db, int version) async {
      // Membuat tabel 'music_files' jika belum ada
      await db.execute('''
        CREATE TABLE IF NOT EXISTS music_files (
          id TEXT PRIMARY KEY,
          title TEXT,
          artist TEXT,
          album TEXT,
          genre TEXT,
          year INTEGER,
          filepath TEXT
        )
      ''');
    },
  );
}

// Fungsi untuk menambahkan data ke dalam database
Future<void> insertData(String id, String title, String artist, String album, String genre, int year, String filepath) async {
  final db = await createDatabase();
  await db.insert(
    'music_files',
    {
      'id': id,
      'title': title,
      'artist': artist,
      'album': album,
      'genre': genre,
      'year': year,
      'filepath': filepath
    },
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

// Fungsi untuk mengambil semua data dari database
Future<List<Map<String, dynamic>>> getAllData() async {
  final db = await createDatabase();
  return db.query('music_files');
}
