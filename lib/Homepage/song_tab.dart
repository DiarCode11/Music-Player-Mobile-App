import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class SongTab extends StatefulWidget {
  const SongTab({Key? key}) : super(key: key);

  @override
  _SongTabState createState() => _SongTabState();
}

class _SongTabState extends State<SongTab> {
  bool _isLoading = true; // State untuk menunjukkan apakah sedang loading
  List<File> _musicFiles = []; // List untuk menyimpan file musik

  @override
  void initState() {
    super.initState();
    _scanMusicFiles(); // Panggil fungsi untuk memindai file musik saat widget pertama kali dibuat
  }

  Future<void> _scanMusicFiles() async {
    setState(() {
      _isLoading = true; // Set isLoading menjadi true ketika proses pemindaian dimulai
    });

    try {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      List<FileSystemEntity> entities = appDocDir.listSync(recursive: true, followLinks: false);

      List<File> musicFiles = [];
      for (FileSystemEntity entity in entities) {
        if (entity is File && _isMusicFile(entity.path)) {
          musicFiles.add(entity as File);
        }
      }

      setState(() {
        _musicFiles = musicFiles;
        _isLoading = false; // Set isLoading menjadi false setelah pemindaian selesai
      });
    } catch (e) {
      print('Error scanning music files: $e');
      setState(() {
        _isLoading = false; // Set isLoading menjadi false jika terjadi kesalahan
      });
    }
  }

  bool _isMusicFile(String path) {
    // Implementasi untuk memeriksa apakah path file adalah file musik
    // Anda dapat menyesuaikan ini berdasarkan jenis file musik yang diinginkan
    String extension = path.split('.').last.toLowerCase();
    return extension == 'mp3' || extension == 'wav' || extension == 'ogg';
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(), // Tampilkan CircularProgressIndicator saat isLoading true
          )
        : Container(
            height: 450,
            color: Colors.black,
            child: Center(
              child: _musicFiles.isEmpty
                  ? Text(
                      'Tidak ada file musik ditemukan',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  : ListView.builder(
                      itemCount: _musicFiles.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            _musicFiles[index].path.split('/').last,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      },
                    ),
            ),
          );
  }
}
