import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Data Contact Masih Kosong',
        style: TextStyle(
          fontSize: 18
        ),
      ),
    );
  }
}