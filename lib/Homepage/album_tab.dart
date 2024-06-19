import 'package:flutter/material.dart';

class AlbumTab extends StatelessWidget {
  const AlbumTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: Colors.black, // Konten untuk tab Artis
      child: Center(
        child: Text(
          'Konten untuk Album',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}