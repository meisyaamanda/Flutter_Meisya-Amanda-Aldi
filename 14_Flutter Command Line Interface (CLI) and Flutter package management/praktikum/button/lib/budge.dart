import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class budges extends StatefulWidget {
  const budges({Key? key}) : super(key: key);

  @override
  State<budges> createState() => _budgesState();
}

class _budgesState extends State<budges> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Badge(
                  padding: EdgeInsets.all(10),
                  shape: BadgeShape.square,
                  badgeColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                  badgeContent: Text(
                    'BADGE',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Badge(
                  padding: EdgeInsets.all(10),
                  shape: BadgeShape.square,
                  badgeColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                  badgeContent: Text(
                    'BADGE',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
