import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String time = '';

  void mulaiTime() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        time = DateFormat.Hms().format(DateTime.now());
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    mulaiTime();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widget'),
        ),
        body: SafeArea(
          child: Center(
            child: Text(time, style: TextStyle(fontSize: 30),),
          ),
        ),
      ),
    );
  }
}

