import 'package:flutter/material.dart';

class Timerstyle extends StatelessWidget {
  const Timerstyle({
    Key? key,
    required this.time,
  }) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(time, style: TextStyle(fontSize: 30),),
    );
  }
}

