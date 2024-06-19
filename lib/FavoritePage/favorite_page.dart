import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
        backgroundColor: Colors.black, // Ubah background AppBar menjadi hitam
        iconTheme: IconThemeData(
          color: Colors.white, // Ubah warna ikon kembali menjadi putih
        ),
        titleTextStyle: TextStyle(
          color: Colors.white, // Ubah warna teks judul menjadi putih
          fontSize: 25,
        ),
      ),
      backgroundColor: Colors.black, // Ubah background halaman menjadi hitam
      body: Center(
        child: Text(
          'Favorite',
          style: TextStyle(
            color: Colors.white, // Ubah warna teks menjadi putih
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
