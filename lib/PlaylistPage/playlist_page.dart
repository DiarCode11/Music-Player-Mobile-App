import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playlist '),
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
        child: Text(
          'Playlist Page',
          style: TextStyle(
            color: Colors.white, // Ubah warna teks menjadi putih
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}