import 'package:flutter/material.dart';
import 'package:flutter_provider/contact_manager.dart';
import 'package:flutter_provider/contact_screen.dart';
import 'package:flutter_provider/empty_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactManager(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ContactScreen(),
      ),
    );
  }
}

