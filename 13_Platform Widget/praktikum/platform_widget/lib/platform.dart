import 'package:flutter/material.dart';
import './drawer.dart';
import './chat.dart';

class platform extends StatefulWidget {
  const platform({Key? key}) : super(key: key);

  @override
  State<platform> createState() => _platformState();
}

class _platformState extends State<platform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Telegram',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.search),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.create,
          color: Colors.white,
        ),
      ),
      drawer: drawerlist(),
      body: SafeArea(
        child: chat(),
      ),
    );
  }
}

