import 'package:flutter/material.dart';
import 'package:flutter_app/provider/regdata.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RegisScreen(),
      ),
    );
  }
}
