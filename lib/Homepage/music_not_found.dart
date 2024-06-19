import 'package:flutter/material.dart';

class MusicNotFound extends StatelessWidget {
  const MusicNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: Colors.black, // Warna latar belakang untuk konten tab Lagu
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.music_off_sharp, // Icon untuk Lagu
              color: Colors.grey[500],
              size: 50,
            ),
            SizedBox(height: 10), // Jarak antara ikon dan teks
            Text(
              'klik disini untuk mencari lagu',
              style: TextStyle(
                color: Colors.grey[500], 
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}