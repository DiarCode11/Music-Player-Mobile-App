import 'package:flutter/material.dart';

class ArtistTab extends StatelessWidget {
  const ArtistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: Colors.black, // Konten untuk tab Artis
      child: Center(
        child: Text(
          'Tab Artist',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}