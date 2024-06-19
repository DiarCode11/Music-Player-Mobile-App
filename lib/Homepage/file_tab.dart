import 'package:flutter/material.dart';

class FileTab extends StatelessWidget {
  const FileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      color: Colors.green, // Konten untuk tab Artis
      child: Center(
        child: Text(
          'Tab File',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}