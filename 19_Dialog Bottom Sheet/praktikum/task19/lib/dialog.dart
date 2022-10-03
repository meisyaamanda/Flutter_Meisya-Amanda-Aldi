import 'package:flutter/material.dart';

class DialogGambar extends StatelessWidget {
  final String image; 

  const DialogGambar ({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(image),
    );
  }
}