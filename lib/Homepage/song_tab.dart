import 'package:flutter/material.dart';

class SongTab extends StatelessWidget {
  const SongTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: Colors.black, // Konten untuk tab Artis
      child: Center(
        child: Text(
          'Tab Lagu',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}