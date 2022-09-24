import 'package:contohassets/gambar.dart';
import 'package:flutter/material.dart';

class Gambar extends StatefulWidget {
  Gambar({super.key});

  @override
  State<Gambar> createState() => _GambarState();
}

class _GambarState extends State<Gambar> {
  List<String> _gambar = [
    'https://picsum.photos/id/1006/367/267',
    'https://picsum.photos/id/1012/367/267',
    'https://picsum.photos/id/1008/367/267',
    'https://picsum.photos/id/100/367/267',
    'https://picsum.photos/id/1015/367/267',
    'https://picsum.photos/id/1021/367/267',
    'https://picsum.photos/id/1022/367/267',
    'https://picsum.photos/id/101/367/267',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menampilkan Gambar'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            itemCount: _gambar.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TampilGambar(gambar: _gambar[index],),
                      ),
                    );
                  },
                  child: Image(
                    image: NetworkImage(_gambar[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
