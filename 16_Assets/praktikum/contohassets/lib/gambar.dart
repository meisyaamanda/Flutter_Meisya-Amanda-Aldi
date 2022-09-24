import 'package:flutter/material.dart';

class TampilGambar extends StatelessWidget {
  final String gambar;

  const TampilGambar({super.key, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Gambar'),
        centerTitle: true,
      ),
      body: Image.network(
        gambar,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
