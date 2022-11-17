import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task22/bloc/contact_bloc.dart';
import 'package:task22/bloc/theme_bloc.dart';
import 'package:task22/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData dark = ThemeData.dark();
  final ThemeData light = ThemeData.light();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ContactBloc>(
          create: (context) => ContactBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, bool>(
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state ? dark : light,
          home: const HomePage(),
        ),
      ),
    );
  }
}
