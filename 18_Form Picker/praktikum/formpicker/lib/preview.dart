import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Preview extends StatefulWidget {
  String cover;
  DateTime publish;
  Color color;
  String caption;

  Preview(
      {super.key,
      required this.cover,
      required this.publish,
      required this.color,
      required this.caption});

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Preview Post',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.file(
              File(widget.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Published' + DateFormat('dd-MM-yyyy').format(widget.publish),
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Text(
                      'Color: ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: widget.color,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(widget.caption),
        ],
      ),
    );
  }
}
