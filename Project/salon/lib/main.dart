import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project1/provider/authprovider.dart';
import 'package:project1/provider/bookingprovider.dart';
import 'package:project1/provider/homeprovider.dart';
import 'package:project1/screens/booking.dart';
import 'package:project1/screens/bottom.dart';
import 'package:project1/screens/home.dart';
import 'package:project1/screens/signin.dart';
import 'package:project1/screens/signup.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (context) => AuthProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => BookingProvider(),
      ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Bottom(),
        ),
    );
  }
}

