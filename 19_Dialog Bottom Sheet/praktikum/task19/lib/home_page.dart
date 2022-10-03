import 'package:flutter/material.dart';
import 'package:task19/dialog.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
                    showModalBottomSheet(
                        context: context,
                        builder: (context) =>
                            DialogGambar(image: _gambar[index]));
                  },
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(
                          'Konfirmasi Gambar',
                          style: TextStyle(fontSize: 16),
                        ),
                        content: DialogGambar(image: _gambar[index]),
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
