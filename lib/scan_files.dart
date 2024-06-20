import 'dart:io';

void main() {
  // Ganti path dengan direktori yang ingin Anda pindai
  String startPath = '0';

  List<FileSystemEntity> entities = scanDirectory(Directory(startPath));

  for (FileSystemEntity entity in entities) {
    print(entity.path);
  }
}

List<FileSystemEntity> scanDirectory(Directory dir) {
  List<FileSystemEntity> entities = [];

  // Membaca semua entitas dalam direktori saat ini (file dan folder)
  List<FileSystemEntity> contents = dir.listSync();

  for (FileSystemEntity entity in contents) {
    entities.add(entity); // Menambahkan entitas ke list

    // Jika entitas adalah direktori, panggil fungsi scanDirectory secara rekursif
    if (entity is Directory) {
      entities.addAll(scanDirectory(entity));
    }
  }

  return entities;
}
