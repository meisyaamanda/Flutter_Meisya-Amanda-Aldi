import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animation',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isBig = !isBig;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            width: isBig ? 500 : 250,
            height: isBig ? 500 : 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/id/1015/6000/4000'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
