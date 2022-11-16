import 'package:flutter/material.dart';
import 'package:task26/screen/contact_screen.dart';
import 'package:task26/screen/contact_view_model.dart';
import 'package:task26/screen/new_contact.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create : (_) =>ContactViewModel(),
        ),
      ],
      
      child : MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactScreen(),
      )
    );
  }
}
