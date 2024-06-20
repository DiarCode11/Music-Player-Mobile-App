import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchMusic extends StatefulWidget {
  const SearchMusic({super.key});

  @override
  State<SearchMusic> createState() => _SearchMusicState();
}

class _SearchMusicState extends State<SearchMusic> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cari Musik'),
        backgroundColor: Colors.black, // Ubah background AppBar menjadi hitam
        iconTheme: IconThemeData(
          color: Colors.white, // Ubah warna ikon kembali menjadi putih
        ),
        titleTextStyle: TextStyle(
          color: Colors.white, // Ubah warna teks judul menjadi putih
          fontSize: 25,
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}